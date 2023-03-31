<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','entry_name') || $check_field('add','entry_name') || $check_field('set','entry_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="项目名称" prop="entry_name">
												<el-input id="entry_name" v-model="form['entry_name']" placeholder="请输入项目名称"
							  v-if="user_group === '管理员' || (form['implementation_project_id'] && $check_field('set','entry_name')) || (!form['implementation_project_id'] && $check_field('add','entry_name'))" :disabled="disabledObj['entry_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','entry_name')">{{form['entry_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','project_type') || $check_field('add','project_type') || $check_field('set','project_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="项目类型" prop="project_type">
												<el-input id="project_type" v-model="form['project_type']" placeholder="请输入项目类型"
							  v-if="user_group === '管理员' || (form['implementation_project_id'] && $check_field('set','project_type')) || (!form['implementation_project_id'] && $check_field('add','project_type'))" :disabled="disabledObj['project_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','project_type')">{{form['project_type']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','user_account') || $check_field('add','user_account') || $check_field('set','user_account')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="用户账号" prop="user_account">
													<el-select v-if="user_group === '管理员' || (form['implementation_project_id'] && $check_field('set','user_account')) || (!form['implementation_project_id'] && $check_field('add','user_account'))" id="user_account" v-model="form['user_account']" :disabled="disabledObj['user_account_isDisabled']">
							<el-option v-for="o in list_user_user_account" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','user_account')" id="user_account" v-model="form['user_account']" :disabled="true">
							<el-option v-for="o in list_user_user_account" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','user_name') || $check_field('add','user_name') || $check_field('set','user_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="用户姓名" prop="user_name">
												<el-input id="user_name" v-model="form['user_name']" placeholder="请输入用户姓名"
							  v-if="user_group === '管理员' || (form['implementation_project_id'] && $check_field('set','user_name')) || (!form['implementation_project_id'] && $check_field('add','user_name'))" :disabled="disabledObj['user_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','user_name')">{{form['user_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','implementation_time') || $check_field('add','implementation_time') || $check_field('set','implementation_time')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="实施时间" prop="implementation_time">
								<el-date-picker :disabled="disabledObj['implementation_time_isDisabled']" v-if="user_group === '管理员' || (form['implementation_project_id'] && $check_field('set','implementation_time')) || (!form['implementation_project_id'] && $check_field('add','implementation_time'))" id="implementation_time"
						v-model="form['implementation_time']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','implementation_time')">{{form['implementation_time']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','project_expectations') || $check_field('add','project_expectations') || $check_field('set','project_expectations')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="项目预期" prop="project_expectations">
												<el-input id="project_expectations" v-model="form['project_expectations']" placeholder="请输入项目预期"
							  v-if="user_group === '管理员' || (form['implementation_project_id'] && $check_field('set','project_expectations')) || (!form['implementation_project_id'] && $check_field('add','project_expectations'))" :disabled="disabledObj['project_expectations_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','project_expectations')">{{form['project_expectations']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','project_requirements') || $check_field('add','project_requirements') || $check_field('set','project_requirements')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="项目要求" prop="project_requirements">
								<el-input type="textarea" id="project_requirements" v-model="form['project_requirements']" placeholder="请输入项目要求"
						v-if="user_group === '管理员' || (form['implementation_project_id'] && $check_field('set','project_requirements')) || (!form['implementation_project_id'] && $check_field('add','project_requirements'))" :disabled="disabledObj['project_requirements_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','project_requirements')">{{form['project_requirements']}}</div>
							</el-form-item>
			</el-col>
					
	
	
	
	
	
	
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_btn_warp">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "implementation_project_id",
				url_add: "~/api/implementation_project/add?",
				url_set: "~/api/implementation_project/set?",
				url_get_obj: "~/api/implementation_project/get_obj?",
				url_upload: "~/api/implementation_project/upload?",

				query: {
					"implementation_project_id": 0,
				},

				form: {
								"entry_name":  '', // 项目名称
										"project_type":  '', // 项目类型
										"user_account": 0, // 用户账号
										"user_name":  '', // 用户姓名
										"implementation_time":  '', // 实施时间
										"project_expectations":  '', // 项目预期
										"project_requirements":  '', // 项目要求
											"implementation_project_id": 0, // ID
						
				},
				disabledObj:{
								"entry_name_isDisabled": false,
										"project_type_isDisabled": false,
										"user_account_isDisabled": false,
										"user_name_isDisabled": false,
										"implementation_time_isDisabled": false,
										"project_expectations_isDisabled": false,
										"project_requirements_isDisabled": false,
										},

	
		
		
					// 用户列表
				list_user_user_account: [],
				
		
		
		
	
			}
		},
		methods: {


	
	
			
	
			
	
				/**
			 * 获取普通用户用户列表
			 */
			async get_list_user_user_account() {
                // if(this.user_group !== "管理员" && this.form["user_account"] === 0) {
                //     this.form["user_account"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=普通用户");
                if(json.result && json.result.list){
                    this.list_user_user_account = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
					get_user_user_account(id){
				var obj = this.list_user_user_account.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			
	
			
	
			
	
			
	
		
			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
												// 获取缓存数据附加
				form = $.db.get("form");
							$.push(this.form ,form);
											
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
										        if (this.form["implementation_time"].indexOf("-")===-1){
          this.form["implementation_time"] = this.$toTime(parseInt(this.form["implementation_time"]),"yyyy-MM-dd")
        }
									$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){


														        if(this.form["implementation_time"]=="0000-00-00"){
          this.form["implementation_time"] = null;
        }
				if(parseInt(this.form["implementation_time"]) > 9999){
					this.form["implementation_time"] = this.$toTime(parseInt(this.form["implementation_time"]),"yyyy-MM-dd")
				}
								

			},

			/**
			 * 提交前验证事件
			 * @param {Object} 请求参数
			 * @return {String} 验证成功返回null, 失败返回错误提示
			 */
			submit_check(param) {
				let msg = null
																											return msg;
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/implementation_project/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/implementation_project/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/implementation_project/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/implementation_project/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/implementation_project/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
									this.get_list_user_user_account();
													},
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}




</style>
