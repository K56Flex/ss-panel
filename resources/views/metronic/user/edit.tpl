{include file='user/main.tpl'}

<div class="page-content-wrapper">
	<!-- Main content -->
	<div class="page-content">
    <!-- BEGIN PAGE BAR-->
    <div class="page-bar">
       <ul class="page-breadcrumb">
           <li>
               <h4><span class="caption-subject font-green bold uppercase">修改资料</span></h4>
           </li>
           <li>
               <span class="caption-subject font-green bold uppercase"><small>Profile Edit</small></span>
           </li>
       </ul>
    </div>
    <!-- END PAGE BAR--> 		
		<div class="row">
			<div class="col-xs-12">
				<div id="msg-error" class="alert alert-danger alert-dismissable" style="display:none">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
					<h4><i class="icon fa fa-warning"></i> 出错了!</h4>

						<p id="msg-error-p"></p>
					</div>
					<div id="msg-success" class="alert alert-success alert-dismissable" style="display:none">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						<h4>
							<i class="icon fa fa-info"></i> 修改成功!</h4>


							<p id="msg-success-p"></p>
						</div>
					</div>
				</div>
				<div class="row">
      <div class="col-md-6">
             <!-- BEGIN Portlet PORTLET-->
             <div class="portlet light bordered">
                 <div class="portlet-title">
                     <div class="caption">
                     		<i class="fa fa-key"></i>
                         <span class="caption-subject bold uppercase"> 网站登录密码修改 </span>
                     </div>
                 </div>
                 <div class="portlet-body">
									<div class="form-horizontal">

										<div id="msg-success" class="alert alert-info alert-dismissable" style="display:none">
											<button type="button" class="close" data-dismiss="alert"
											aria-hidden="true">&times;</button>
											<h4>
											<i class="icon fa fa-info"></i> Ok!</h4>

												<p id="msg-success-p"></p>
											</div>

											<div class="form-group">
												<label class="col-md-3 control-label bold">当前密码</label>


												<div class="col-md-9">
													<input type="password" class="form-control" placeholder="当前密码(必填)" id="oldpwd">



												</div>
											</div>

											<div class="form-group">
												<label class="col-md-3 control-label bold">新密码</label>

												<div class="col-md-9">
													<input type="password" class="form-control" placeholder="新密码" id="pwd">

												</div>
											</div>

											<div class="form-group">
												<label class="col-md-3 control-label bold">确认密码</label>


												<div class="col-md-9">
													<input type="password" placeholder="确认密码" class="form-control" id="repwd">


												</div>
											</div>
											<div class="form-group">
												<div class="col-md-9 pull-right">
													<button type="submit" id="pwd-update" class="btn green btn-outline">修改</button>
												</div>
											</div>
										</div>
                  </div>
              </div>
              <!-- END Portlet PORTLET-->
       </div>

      	<div class="col-md-6">
             <!-- BEGIN Portlet PORTLET-->
             <div class="portlet light bordered">
                 <div class="portlet-title">
                     <div class="caption">
                     		 <i class="fa fa-link"></i>
                         <span class="caption-subject bold uppercase"> ShadowsocksR连接信息修改 </span>
                     </div>
                 </div>
                 <div class="portlet-body">
											<div class="form-horizontal">
                        <div id="ss-msg-success" class="alert alert-success alert-dismissable" style="display:none">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                <h4><i class="icon fa fa-info"></i> 修改成功!</h4>
                                <p id="ss-msg-success-p"></p>
                        </div>												
												<div class="form-group">
													<label class="col-md-3 control-label bold">连接密码</label>


													<div class="col-md-9">
														<div class="input-group">
															<input type="text" id="sspwd" placeholder="输入新连接密码" class="form-control">



															<div class="input-group-btn">
																<button type="submit" id="ss-pwd-update" class="btn green btn-outline">修改</button>

															</div>
														</div>
													</div>
												</div>

												<div class="form-group">
													<label class="col-md-3 control-label bold">协议插件</label>


													<div class="col-md-9">
														<div class="input-group">
															<select class="bs-select form-control" id="protocol" {if $user->custom_rss == 0} disabled="disabled" {/if}>
																<option value="origin" {if $user->protocol=="origin"}selected="selected"{/if}>origin</option>
																<option value="verify_deflate" {if $user->protocol=="verify_deflate"}selected="selected"{/if}>verify_deflate</option>
																<option data-subtext="推荐" value="auth_sha1_v4" {if $user->protocol=="auth_sha1_v4"}selected="selected"{/if}>auth_sha1_v4</option>
																<option value="auth_sha1_v4_compatible" {if $user->protocol=="auth_sha1_v4_compatible"}selected="selected"{/if}>auth_sha1_v4_compatible</option>
																<option data-subtext="推荐" value="auth_aes128_md5" {if $user->protocol=="auth_aes128_md5"}selected="selected"{/if}>auth_aes128_md5</option>
																<option data-subtext="推荐" value="auth_aes128_sha1" {if $user->protocol=="auth_aes128_sha1"}selected="selected"{/if}>auth_aes128_sha1</option>
																<option data-subtext="推荐" value="auth_chain_a" {if $user->protocol=="auth_chain_a"}selected="selected"{/if}>auth_chain_a</option>
																<option data-subtext="推荐" value="auth_chain_b" {if $user->protocol=="auth_chain_b"}selected="selected"{/if}>auth_chain_b</option>	
															</select>
															<div class="input-group-btn">
																<button type="submit" id="protocol-update" class="btn green btn-outline" {if $user->custom_rss == 0} disabled="disabled" {/if}>修改</button>

															</div>
														</div>
													</div>
												</div>


												<div class="form-group">
													<label class="col-md-3 control-label bold">混淆插件</label>


													<div class="col-md-9">
														<div class="input-group">
															<select class="bs-select form-control" id="obfs" {if $user->custom_rss == 0} disabled="disabled" {/if}>
																<option data-subtext="推荐" value="plain" {if $user->obfs=="plain"}selected="selected"{/if}>plain</option>
																<option value="http_post" {if $user->obfs=="http_post"}selected="selected"{/if}>http_post</option>
																<option value="http_post_compatible" {if $user->obfs=="http_post_compatible"}selected="selected"{/if}>http_post_compatible</option>
																<option data-subtext="推荐" value="http_simple" {if $user->obfs=="http_simple"}selected="selected"{/if}>http_simple</option>
																<option value="http_simple_compatible" {if $user->obfs=="http_simple_compatible"}selected="selected"{/if}>http_simple_compatible</option>
																<option value="random_head" {if $user->obfs=="random_head"}selected="selected"{/if}>random_head</option>
																<option data-subtext="推荐" value="tls1.2_ticket_auth" {if $user->obfs=="tls1.2_ticket_auth"}selected="selected"{/if}>tls1.2_ticket_auth</option>
																<option value="tls1.2_ticket_auth_compatible" {if $user->obfs=="tls1.2_ticket_auth_compatible"}selected="selected"{/if}>tls1.2_ticket_auth_compatible</option>
															</select>
															<div class="input-group-btn">
																<button type="submit" id="obfs-update" class="btn green btn-outline" {if $user->custom_rss == 0} disabled="disabled" {/if}>修改</button>

															</div>
														</div>
													</div>
												</div>


												<div class="form-group">
													<label class="col-md-3 control-label bold">加密方法</label>


													<div class="col-md-9">
														<div class="input-group">
															<select class="bs-select form-control" id="method" {if $user->custom_method == 0} disabled="disabled"{/if}>
																<option value="none" {if $user->protocol !="auth_chain_a" && $user->protocol !="auth_chain_b"} data-subtext="协议插件为:auth_chain_a或auth_chain_b时可用" disabled="disabled"{/if} {if $user->method=="none"}selected="selected"{/if}>none</option>
																<option value="table" {if $user->method=="table"}selected="selected"{/if}>table</option>
																<option value="aes-128-cfb" {if $user->method=="aes-128-cfb"}selected="selected"{/if}>aes-128-cfb</option>
																<option value="aes-192-cfb" {if $user->method=="aes-192-cfb"}selected="selected"{/if}>aes-192-cfb</option>																
																<option data-subtext="推荐" value="aes-256-cfb" {if $user->method=="aes-256-cfb"}selected="selected"{/if}>aes-256-cfb</option>
																<option value="aes-128-ctr" {if $user->method=="aes-128-ctr"}selected="selected"{/if}>aes-128-ctr</option>
																<option value="aes-192-ctr" {if $user->method=="aes-192-ctr"}selected="selected"{/if}>aes-192-ctr</option>
																<option value="aes-256-ctr" {if $user->method=="aes-256-ctr"}selected="selected"{/if}>aes-256-ctr</option>																
																<option value="bf-cfb" {if $user->method=="bf-cfb"}selected="selected"{/if}>bf-cfb</option>
																<option value="camellia-128-cfb" {if $user->method=="camellia-128-cfb"}selected="selected"{/if}>camellia-128-cfb</option>
																<option value="camellia-192-cfb" {if $user->method=="camellia-192-cfb"}selected="selected"{/if}>camellia-192-cfb</option>
																<option value="camellia-256-cfb" {if $user->method=="camellia-256-cfb"}selected="selected"{/if}>camellia-256-cfb</option>
																<option value="rc4-md5" {if $user->method=="rc4-md5"}selected="selected"{/if}>rc4-md5</option>
																<option value="rc4-md5-6" {if $user->method=="rc4-md5-6"}selected="selected"{/if}>rc4-md5-6</option>
																<option value="salsa20" {if $user->method=="salsa20"}selected="selected"{/if}>salsa20</option>
																<option data-subtext="推荐" value="chacha20" {if $user->method=="chacha20"}selected="selected"{/if}>chacha20</option>
																<option data-subtext="推荐" value="chacha20-ietf" {if $user->method=="chacha20-ietf"}selected="selected"{/if}>chacha20-ietf</option>
															</select>
															<div class="input-group-btn">
																<button type="submit" id="method-update" class="btn green btn-outline" {if $user->custom_method == 0} disabled="disabled" {/if}>修改</button>

															</div>
														</div>
													</div>
												</div>
											</div>

                 </div>
             </div>
              <!-- END Portlet PORTLET-->
       </div>
							</div>
							<!-- /.box -->
						</div>
						<!-- /.col (right) -->

					</div>
				</div>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
			

			<script>
				$("#msg-success").hide();
				$("#msg-error").hide();
				$("#ss-msg-success").hide();
			</script>

			<script>
				$(document).ready(function () {
					$("#pwd-update").click(function () {
						$.ajax({
							type: "POST",
							url: "password",
							dataType: "json",
							data: {
								oldpwd: $("#oldpwd").val(),
								pwd: $("#pwd").val(),
								repwd: $("#repwd").val()
							},
							success: function (data) {
								if (data.ret) {
									$("#msg-error").hide();
									$("#msg-success").show();
									$("#msg-success-p").html(data.msg);
								} else {
									$("#msg-error").show();
									$("#msg-error-p").html(data.msg);
								}
							},
							error: function (jqXHR) {
								alert("发生错误：" + jqXHR.status);


							}
						})
					})
				})
			</script>

			<script>
				$(document).ready(function () {
					$("#ss-pwd-update").click(function () {
						$.ajax({
							type: "POST",
							url: "sspwd",
							dataType: "json",
							data: {
								sspwd: $("#sspwd").val()
							},
							success: function (data) {
								if (data.ret == 1) {
									$("#ss-msg-success").show();
									$("#ss-msg-success-p").html(data.msg);
								} else {
									$("#msg-error").show();
									$("#msg-error-p").html(data.msg);
								}
							},
							error: function (jqXHR) {
								alert("发生错误：" + jqXHR.status);


							}
						})
					})
				})
			</script>


			<script>
				$(document).ready(function () {
					$("#method-update").click(function () {
						$.ajax({
							type: "POST",
							url: "method",
							dataType: "json",
							data: {
								method: $("#method").val()
							},
							success: function (data) {
								if (data.ret == 1) {
									$("#ss-msg-success").show();
									$("#ss-msg-success-p").html(data.msg);
								} else {
									$("#msg-error").show();
									$("#msg-error-p").html(data.msg);
								}
							},
							error: function (jqXHR) {
								alert("发生错误：" + jqXHR.status);


							}
						})
					})
				})
			</script>

			<script>
				$(document).ready(function () {
					$("#protocol-update").click(function () {
						$.ajax({
							type: "POST",
							url: "protocol",
							dataType: "json",
							data: {
								protocol: $("#protocol").val()
							},
							success: function (data) {
								if (data.ret == 1) {
									$("#ss-msg-success").show();
									$("#ss-msg-success-p").html(data.msg);
								} else {
									$("#msg-error").show();
									$("#msg-error-p").html(data.msg);
								}
							},
							error: function (jqXHR) {
								alert("发生错误：" + jqXHR.status);


							}
						})
					})
				})
			</script>

			<script>
				$(document).ready(function () {
					$("#obfs-update").click(function () {
						$.ajax({
							type: "POST",
							url: "obfs",
							dataType: "json",
							data: {
								obfs: $("#obfs").val()
							},
							success: function (data) {
								if (data.ret == 1) {
									$("#ss-msg-success").show();
									$("#ss-msg-success-p").html(data.msg);
								} else {
									$("#msg-error").show();
									$("#msg-error-p").html(data.msg);
								}
							},
							error: function (jqXHR) {
								alert("发生错误：" + jqXHR.status);


							}
						})
					})
				})
			</script>


			{include file='user/footer.tpl'}
