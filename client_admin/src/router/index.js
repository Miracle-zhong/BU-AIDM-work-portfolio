import Vue from 'vue';
import VueRouter from 'vue-router';
import index from '../views/index.vue';
import login from '../views/login.vue';
import forgot from '../views/forgot.vue';
Vue.use(VueRouter)

const routes = [
	// 主页
	{
		path: '/',
		name: 'index',
		component: index,
		meta: {
			index: 0,
			title: '首页'
		}
	},

	// 登录
	{
		path: '/login',
		name: 'login',
		component: login,
		meta: {
			index: 0,
			title: '登录'
		}
	},


	// 忘记密码
	{
		path: '/forgot',
		name: "forgot",
		component: forgot,
		meta: {
			index: 0,
			title: '忘记密码'
		}
	},

	// 修改密码
	{
		path: '/user/password',
		name: "password",
		component: () => import("../views/user/password.vue"),
		meta: {
			index: 0,
			title: '修改密码'
		}
	},

	// 视频播放页
	{
		path: "/media/video",
		name: "video",
		component: () => import('../views/media/video.vue'),
		meta: {
			index: 0,
			title: "视频"
		}
	},

	// 音频播放页
	{
		path: "/media/audio",
		name: "audio",
		component: () => import('../views/media/audio.vue'),
		meta: {
			index: 0,
			title: "音频"
		}
	},








	// 普通用户路由
	{
		path: '/ordinary_users/table',
		name: 'ordinary_users_table',
		component: () => import('../views/ordinary_users/table.vue'),
		meta: {
			index: 0,
			title: '普通用户列表'
		}
	},
	{
		path: '/ordinary_users/view',
		name: 'ordinary_users_view',
		component: () => import('../views/ordinary_users/view.vue'),
		meta: {
			index: 0,
			title: '普通用户详情'
		}
	},
	// 项目管理路由
	{
		path: '/project_management/table',
		name: 'project_management_table',
		component: () => import('../views/project_management/table.vue'),
		meta: {
			index: 0,
			title: '项目管理列表'
		}
	},
	{
		path: '/project_management/view',
		name: 'project_management_view',
		component: () => import('../views/project_management/view.vue'),
		meta: {
			index: 0,
			title: '项目管理详情'
		}
	},
	// 申报信息路由
	{
		path: '/declaration_information/table',
		name: 'declaration_information_table',
		component: () => import('../views/declaration_information/table.vue'),
		meta: {
			index: 0,
			title: '申报信息列表'
		}
	},
	{
		path: '/declaration_information/view',
		name: 'declaration_information_view',
		component: () => import('../views/declaration_information/view.vue'),
		meta: {
			index: 0,
			title: '申报信息详情'
		}
	},
	// 实施项目路由
	{
		path: '/implementation_project/table',
		name: 'implementation_project_table',
		component: () => import('../views/implementation_project/table.vue'),
		meta: {
			index: 0,
			title: '实施项目列表'
		}
	},
	{
		path: '/implementation_project/view',
		name: 'implementation_project_view',
		component: () => import('../views/implementation_project/view.vue'),
		meta: {
			index: 0,
			title: '实施项目详情'
		}
	},
	// 结题管理路由
	{
		path: '/closing_management/table',
		name: 'closing_management_table',
		component: () => import('../views/closing_management/table.vue'),
		meta: {
			index: 0,
			title: '结题管理列表'
		}
	},
	{
		path: '/closing_management/view',
		name: 'closing_management_view',
		component: () => import('../views/closing_management/view.vue'),
		meta: {
			index: 0,
			title: '结题管理详情'
		}
	},

	// 用户路由
	{
		path: '/user/table',
		name: 'user_table',
		component: () => import('../views/user/table.vue'),
		meta: {
			index: 0,
			title: '用户列表'
		}
	},
	{
		path: '/user/view',
		name: 'user_view',
		component: () => import('../views/user/view.vue'),
		meta: {
			index: 0,
			title: '用户详情'
		}
	},
	{
		path: '/user/info',
		name: 'user_info',
		component: () => import('../views/user/info.vue'),
		meta: {
			index: 0,
			title: '个人信息'
		}
	},
	// 用户组路由
	{
		path: '/user_group/table',
		name: 'user_group_table',
		component: () => import('../views/user_group/table.vue'),
		meta: {
			index: 0,
			title: '用户组列表'
		}
	},
	{
		path: '/user_group/view',
		name: 'user_group_view',
		component: () => import('../views/user_group/view.vue'),
		meta: {
			index: 0,
			title: '用户组详情'
		}
	}
]

const router = new VueRouter({
	mode: 'history',
	base: process.env.BASE_URL,
	routes
})

router.beforeEach((to, from, next) => {
	let token = to.query.token;
	if (token){
		$.db.set("token",token,120);
	}
	next();
})

router.afterEach((to, from, next) => {
	let title = "项目管理系统-admin";
	document.title = title;
})

export default router
