<?php
	
	$upload_file = $_FILES["Filedata"];
	
	// ��֤�ϴ�
	if (!isset($upload_file)) {
		HandleError("û���ҵ��ϴ��ļ���");
		exit(0);
	} else if (isset($upload_file["error"]) && $upload_file["error"] != 0) {
		HandleError($uploadErrors[$uploadErrors["error"]]);
		exit(0);
	} else if (!isset($upload_file["tmp_name"]) || !@is_uploaded_file($upload_file["tmp_name"])) {
		HandleError("�ϴ�ʧ��is_uploaded_file���ԡ�");
		exit(0);
	} else if (!isset($upload_file['name'])) {
		HandleError("�ļ���û�����֡�");
		exit(0);
	}

	// ����
	$save_path = "upload/"; // �洢·��
	$max_file_size_in_bytes = 2*1024*1024*1024;// 2GB in bytes
	$extension_whitelist = array("jpg", "gif", "png", "flv", "f4v", "mp4");	// ������ļ�����
	
	// ��������	
	$file_name = md5(uniqid($_FILES[$upload_name]['name'])); // ����Ψһ���ļ���
	$file_extension = "";
	
	
	// ��֤�ϴ��ļ����ļ���С��ע�⣺�˴���֧�ֵ�����ļ�Ϊ2GB��
	$file_size = @filesize($upload_file["tmp_name"]);
	if (!$file_size || $file_size > $max_file_size_in_bytes) {
		HandleError("�ļ��������������С��");
		exit(0);
	}
	if ($file_size <= 0) {
		HandleError("�ļ���СΪ0��");
		exit(0);
	}

	// ��֤�ļ���չ��
	$path_info = pathinfo($upload_file['name']);
	$file_extension = $path_info["extension"];
	$is_valid_extension = false;
	foreach ($extension_whitelist as $extension) {
		if (strcasecmp($file_extension, $extension) == 0) {
			$is_valid_extension = true;
			break;
		}
	}
	if (!$is_valid_extension) {
		HandleError("��Ч���ļ���չ����");
		exit(0);
	}
	$file_full_path = $save_path . $file_name . "." . $file_extension;
	// �ƶ��ļ�
	if (!@move_uploaded_file($upload_file["tmp_name"], $file_full_path)) {
		HandleError("�ļ�û�б�����ɹ���");
		exit(0);
	}
	
	if($file_extension == "jpg" || $file_extension == "png" || $file_extension == "gif" ) {
		list($up_width, $up_height, $up_type, $up_attr) = getimagesize($file_full_path);
		echo "{path:\"".$file_full_path."\", width:".$up_width.", height:".$up_height."}";
	} else {
		// ����ļ���
		echo "{path:".$file_full_path."}";
	}
	exit(0);
	// �����Ϣ
	function HandleError($message) {
		echo $message;
	}
?>