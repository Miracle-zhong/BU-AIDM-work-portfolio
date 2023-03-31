<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','entry_name') || $check_field('add','entry_name') || $check_field('set','entry_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="项目名称" prop="entry_name">
												<el-input id="entry_name" v-model="form['entry_name']" placeholder="请输入项目名称"
							  v-if="user_group === '管理员' || (form['project_management_id'] && $check_field('set','entry_name')) || (!form['project_management_id'] && $check_field('add','entry_name'))" :disabled="disabledObj['entry_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','entry_name')">{{form['entry_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','project_type') || $check_field('add','project_type') || $check_field('set','project_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="项目类型" prop="project_type">
												<el-input id="project_type" v-model="form['project_type']" placeholder="请输入项目类型"
							  v-if="user_group === '管理员' || (form['project_management_id'] && $check_field('set','project_type')) || (!form['project_management_id'] && $check_field('add','project_type'))" :disabled="disabledObj['project_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','project_type')">{{form['project_type']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','start_time') || $check_field('add','start_time') || $check_field('set','start_time')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="开始时间" prop="start_time">
								<el-date-picker :disabled="disabledObj['start_time_isDisabled']" v-if="user_group === '管理员' || (form['project_management_id'] && $check_field('set','start_time')) || (!form['project_management_id'] && $check_field('add','start_time'))" id="start_time"
						v-model="form['start_time']" type="datetime" placeholder="选择日期时间">
					</el-date-picker>
					<div v-else-if="$check_field('get','start_time')">{{form['start_time']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','end_time') || $check_field('add','end_time') || $check_field('set','end_time')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="结束时间" prop="end_time">
								<el-date-picker :disabled="disabledObj['end_time_isDisabled']" v-if="user_group === '管理员' || (form['project_management_id'] && $check_field('set','end_time')) || (!form['project_management_id'] && $check_field('add','end_time'))" id="end_time"
						v-model="form['end_time']" type="datetime" placeholder="选择日期时间">
					</el-date-picker>
					<div v-else-if="$check_field('get','end_time')">{{form['end_time']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','material_accessories') || $check_field('add','material_accessories') || $check_field('set','material_accessories')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="材料附件" prop="material_accessories">
												<div v-if="disabledObj['material_accessories_isDisabled']">
						<div v-if="$check_field('get','material_accessories')">
							<el-button type="primary" @click="$download($fullUrl(form['material_accessories']),form['material_accessories'])">下载<i
									class="el-icon-download el-icon--right"></i></el-button>
						</div>
					</div>
					<div v-else>
						<el-upload v-if="user_group === '管理员' || (form['project_management_id'] && $check_field('set','material_accessories')) || (!form['project_management_id'] && $check_field('add','material_accessories'))" class="upload-demo" drag
								   action="" style="max-width: 300px;width: 100%;" :http-request="upload_material_accessories" :limit="1" accept="">
							<i class="el-icon-upload"></i>
							<div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
						</el-upload>
						<div v-else-if="$check_field('get','material_accessories')">
							<el-button type="primary" @click="$download($fullUrl(form['material_accessories']),form['material_accessories'])">下载<i
									class="el-icon-download el-icon--right"></i></el-button>
						</div>
					</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','declaration_requirements') || $check_field('add','declaration_requirements') || $check_field('set','declaration_requirements')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="申报要求" prop="declaration_requirements">
								<el-input type="textarea" id="declaration_requirements" v-model="form['declaration_requirements']" placeholder="请输入申报要求"
						v-if="user_group === '管理员' || (form['project_management_id'] && $check_field('set','declaration_requirements')) || (!form['project_management_id'] && $check_field('add','declaration_requirements'))" :disabled="disabledObj['declaration_requirements_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','declaration_requirements')">{{form['declaration_requirements']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','declaration_description') || $check_field('add','declaration_description') || $check_field('set','declaration_description')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="申报说明" prop="declaration_description">
								<el-input type="textarea" id="declaration_description" v-model="form['declaration_description']" placeholder="请输入申报说明"
						v-if="user_group === '管理员' || (form['project_management_id'] && $check_field('set','declaration_description')) || (!form['project_management_id'] && $check_field('add','declaration_description'))" :disabled="disabledObj['declaration_description_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','declaration_description')">{{form['declaration_description']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','project_description') || $check_field('add','project_description') || $check_field('set','project_description')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="项目说明" prop="project_description">
								<el-input type="textarea" id="project_description" v-model="form['project_description']" placeholder="请输入项目说明"
						v-if="user_group === '管理员' || (form['project_management_id'] && $check_field('set','project_description')) || (!form['project_management_id'] && $check_field('add','project_description'))" :disabled="disabledObj['project_description_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','project_description')">{{form['project_description']}}</div>
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
				field: "project_management_id",
				url_add: "~/api/project_management/add?",
				url_set: "~/api/project_management/set?",
				url_get_obj: "~/api/project_management/get_obj?",
				url_upload: "~/api/project_management/upload?",

				query: {
					"project_management_id": 0,
				},

				form: {
								"entry_name":  '', // 项目名称
										"project_type":  '', // 项目类型
										"start_time":  '', // 开始时间
										"end_time":  '', // 结束时间
										"material_accessories":  '', // 材料附件
										"declaration_requirements":  '', // 申报要求
										"declaration_description":  '', // 申报说明
										"project_description":  '', // 项目说明
											"project_management_id": 0, // ID
						
				},
				disabledObj:{
								"entry_name_isDisabled": false,
										"project_type_isDisabled": false,
										"start_time_isDisabled": false,
										"end_time_isDisabled": false,
										"material_accessories_isDisabled": false,
										"declaration_requirements_isDisabled": false,
										"declaration_description_isDisabled": false,
										"project_description_isDisabled": false,
										},

	
		
		
		
		
		
		
		
	
			}
		},
		methods: {


	
	
			
	
			
	
			
	
						/**
			 * 上传材料附件
			 * @param {Object} param 文件参数
			 */
			upload_material_accessories(param){
						this.uploadFile(param.file, "material_accessories");
					},
	
	
			
	
			
	
			
	
		
			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
														
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
					        if (this.form["start_time"].indexOf("-")===-1){
            this.form["start_time"] = this.$toTime(parseInt(this.form["start_time"]),"yyyy-MM-dd hh:mm:ss")
        }
			        if (this.form["end_time"].indexOf("-")===-1){
            this.form["end_time"] = this.$toTime(parseInt(this.form["end_time"]),"yyyy-MM-dd hh:mm:ss")
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


							        if(this.form["start_time"]=="0000-00-00 00:00:00"){
          this.form["start_time"] = null;
        }
				if(parseInt(this.form["start_time"]) > 9999){
					this.form["start_time"] = this.$toTime(parseInt(this.form["start_time"]),"yyyy-MM-dd hh:mm:ss")
				}
				        if(this.form["end_time"]=="0000-00-00 00:00:00"){
          this.form["end_time"] = null;
        }
				if(parseInt(this.form["end_time"]) > 9999){
					this.form["end_time"] = this.$toTime(parseInt(this.form["end_time"]),"yyyy-MM-dd hh:mm:ss")
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
					bl = this.$check_action('/project_management/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/project_management/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/project_management/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/project_management/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/project_management/view','get');
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
