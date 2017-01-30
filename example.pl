use Mojo::Webqq;

				my $client = Mojo::Webqq->new(log_encoding=>"utf-8");

				$client->load("ShowMsg");$client->load("GCM",data=>{

				api_url => 'https://gcm-http.googleapis.com/gcm/send',

				api_key=>'AIzaSyB18io0hduB_3uHxKD3XaebPCecug27ht8',

				registration_ids=>["输入你自己的令牌"],#从GcmForMojo中获取 ！不能换行！
				
				#下面的格式如下 中括号里 逗号隔开
				#群号直接写数字 群名需要用双引号括起 
				#示范:[123456,"GcmForMojo"]
				
				allow_group		=>[],#接收推送的群

				ban_group		=>[],#不接受推送的群

				allow_dicuss    =>[],#接收推送的讨论组
				
				ban_discuss     =>[],#不接受推送的讨论组
				});

				$client->run(); 
