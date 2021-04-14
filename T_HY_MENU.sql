/*
 Navicat Premium Data Transfer

 Source Server         : local-oracle11g2
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Host           : localhost:1521
 Source Schema         : HYDG16

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 06/04/2021 16:36:38
*/


-- ----------------------------
-- Table structure for T_HY_MENU
-- ----------------------------
DROP TABLE "HYDG16"."T_HY_MENU";
CREATE TABLE "HYDG16"."T_HY_MENU" (
  "MENU_CODE" VARCHAR2(200 BYTE) NOT NULL ,
  "MENU_NAME" VARCHAR2(200 BYTE) NOT NULL ,
  "ALIAS_NAME" VARCHAR2(100 BYTE) ,
  "MENU_UID" VARCHAR2(200 BYTE) ,
  "STATUS" CHAR(1 BYTE) ,
  "MENU_ORDER" NUMBER(5) ,
  "MENU_CLS" VARCHAR2(50 BYTE) ,
  "MENU_ICON" VARCHAR2(100 BYTE) ,
  "MENU_QTIP" VARCHAR2(100 BYTE) ,
  "MENU_URL" VARCHAR2(200 BYTE) ,
  "HELP_URL" VARCHAR2(200 BYTE) ,
  "MENU_ACT" VARCHAR2(50 BYTE) ,
  "MENU_LAYOUT" VARCHAR2(50 BYTE) ,
  "MENU_URL_TYPE" VARCHAR2(10 BYTE) ,
  "VISIBILITY" CHAR(1 BYTE) ,
  "PARENT_CODE" VARCHAR2(200 BYTE) ,
  "RESOURCE_TYPE" VARCHAR2(10 BYTE) NOT NULL 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."MENU_CODE" IS '菜单编号';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."MENU_NAME" IS '菜单名称';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."ALIAS_NAME" IS '菜单别名';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."MENU_UID" IS '菜单唯一ID(备用)';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."STATUS" IS '状态:0-正常(其他数字备用)';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."MENU_ORDER" IS '同级菜单间的顺序';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."MENU_CLS" IS '菜单样式';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."MENU_ICON" IS '菜单图标';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."MENU_QTIP" IS '菜单提示';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."MENU_URL" IS '菜单链接';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."HELP_URL" IS '帮助地址';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."MENU_ACT" IS '打开方式:空/tab-Tab，full-全屏，open-弹窗(默认为空)';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."MENU_LAYOUT" IS '菜单布局:tree、menu';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."MENU_URL_TYPE" IS '链接挂载方式:url、report、favorite';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."VISIBILITY" IS '菜单可见:0-否,1-是(默认为空-是)';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."PARENT_CODE" IS '上级菜单编号';
COMMENT ON COLUMN "HYDG16"."T_HY_MENU"."RESOURCE_TYPE" IS '资源类型:menu-菜单,func-功能';
COMMENT ON TABLE "HYDG16"."T_HY_MENU" IS '菜单资源表，包括菜单、功能';

-- ----------------------------
-- Records of "T_HY_MENU"
-- ----------------------------
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:16', '删除用户视图元模型', NULL, NULL, NULL, '160', NULL, NULL, NULL, 'metaapp_UserView_deleteViewClassifier.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:17', '将视图设置为我的默认视图', NULL, NULL, NULL, '170', NULL, NULL, NULL, 'metaapp_UserView_setDefaultView.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:18', '取消默认视图', NULL, NULL, NULL, '180', NULL, NULL, NULL, 'metaapp_UserView_cancelDefaultView.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW', '系统视图', NULL, NULL, NULL, '7', NULL, 'resource/images/icons/folder_web.gif', NULL, 'metaapp_DataView_openDataView.htm', NULL, NULL, NULL, 'url', NULL, 'MM_MANAGE', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:1', '打开管理系统视图页面', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaapp_DataView_openDataView.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:2', '新增系统视图', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaapp_DataView_addDataView.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:3', '新增系统视图文件夹', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaapp_DataView_addDataViewFolder.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:4', '新增系统视图元数据', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'metaapp_DataView_addDataViewMetadata.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:5', '更新系统视图', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'metaapp_DataView_updateView.htm', NULL, NULL, NULL, 'url', NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:6', '更新视图文件夹', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'metaapp_DataView_updateViewFolder.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:7', '重命名系统视图', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'metaapp_DataView_renameDataView.htm', NULL, NULL, NULL, 'url', NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:8', '重命名系统视图文件夹', NULL, NULL, NULL, '80', NULL, NULL, NULL, 'metaapp_DataView_renameDataViewFolder.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:9', '交换视图的显示顺序', NULL, NULL, NULL, '90', NULL, NULL, NULL, 'metaapp_DataView_swapDataViewOrder.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:10', '交换视图文件夹的显示顺序', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metaapp_DataView_swapDataViewFolderOrder.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:11', '删除系统视图', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metaapp_DataView_deleteDataView.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:12', '删除系统视图文件夹', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metaapp_DataView_deleteDataViewFolder.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:13', '删除页码数据', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'metaapp_DataView_deleteViewPage.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:14', '删除系统视图元数据', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'metaapp_DataView_deleteViewMetadata.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:15', '删除系统视图元模型', NULL, NULL, NULL, '150', NULL, NULL, NULL, 'metaapp_DataView_deleteViewClassifier.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:16', '查询角色', NULL, NULL, NULL, '160', NULL, NULL, NULL, 'metaapp_DataViewAuth_findRole.htm', NULL, NULL, NULL, 'url', NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_DATAVIEW:17', '重命名视图或文件夹下的元模型', NULL, NULL, NULL, '170', NULL, NULL, NULL, 'metaapp_DataView_renameViewClassifier.htm', NULL, NULL, NULL, 'url', NULL, 'MM_BIZ_DATAVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_QRY:1', '查询元数据变更的明细数据', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaapp_AlterationQuery_queryAlterationData.htm', NULL, NULL, NULL, NULL, NULL, 'MM_ALTERATION_QRY', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_QRY:2', '查询变更通知的发送记录', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaapp_AlterationQuery_statAlteration.htm', NULL, NULL, NULL, NULL, NULL, 'MM_ALTERATION_QRY', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_QRY:3', '元数据比较', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaapp_AlterationQuery_quickCompareAlterationData.htm', NULL, NULL, NULL, NULL, NULL, 'MM_ALTERATION_QRY', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_SUB:1', '查询元数据变更订阅的配置记录列表', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaapp_AlterationSubscribe_querySubscribeConf.htm', NULL, NULL, NULL, NULL, NULL, 'MM_ALTERATION_SUB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_SUB:2', '订阅元数据变更', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaapp_AlterationSubscribe_subscribe.htm', NULL, NULL, NULL, NULL, NULL, 'MM_ALTERATION_SUB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_SUB:3', '打开新增/修改订阅配置页面', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaapp_AlterationSubscribe_openAlterationConf.htm', NULL, NULL, NULL, NULL, NULL, 'MM_ALTERATION_SUB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_SUB:4', '删除订阅配置', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'metaapp_AlterationSubscribe_deleteAlterationConf.htm', NULL, NULL, NULL, NULL, NULL, 'MM_ALTERATION_SUB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_SUB:5', '删除变更通知的发送记录', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'metaapp_AlterationSubscribe_deleteSubNotifyResult.htm', NULL, NULL, NULL, NULL, NULL, 'MM_ALTERATION_SUB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_SUB:6', '删除变更通知的发送记录', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'metaapp_AlterationSubscribe_deleteAdnSubNotifyResult.htm', NULL, NULL, NULL, NULL, NULL, 'MM_ALTERATION_SUB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_SUB:7', '保存订阅分支', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'metaapp_AlterationSubscribe_saveSubInstanceRange.htm', NULL, NULL, NULL, NULL, NULL, 'MM_ALTERATION_SUB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_SUB:8', '保存订阅者', NULL, NULL, NULL, '80', NULL, NULL, NULL, 'metaapp_AlterationSubscribe_saveSubscribee.htm', NULL, NULL, NULL, NULL, NULL, 'MM_ALTERATION_SUB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ANALYSE_BATCH_ADD', '维护分析任务窗口', NULL, NULL, NULL, '1', NULL, NULL, NULL, 'metaapp_BatchAnalyse_editBatchAnalyseTask.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ANALYSE_BATCH_TASK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('ipvr-add', '添加供应商', NULL, NULL, NULL, '100', NULL, '/resource/images/menuico/389.gif', NULL, 'metadata_TPvr_addTPvr.htm', NULL, NULL, NULL, NULL, NULL, 'sys-ipvr-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('daa-defod', '新增文件夹', NULL, NULL, NULL, '8080', NULL, NULL, NULL, 'metadata_ControlM_folder.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_ALERTLEVEL', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metaextract_ExactorScript_genProcess', '采集关联脚本new', NULL, NULL, NULL, '17', NULL, NULL, NULL, 'metaextract_ExactorScript_genProcess.htm', NULL, NULL, NULL, NULL, NULL, 'MM_EXTRACTOR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_ControlM_saveJob', 'metadata_ControlM_saveJob', NULL, NULL, NULL, '2224', NULL, NULL, NULL, 'metadata_ControlM_saveJob.htm', NULL, NULL, NULL, NULL, NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_ScriptManager', '脚本管理', NULL, NULL, NULL, '2234', NULL, NULL, NULL, 'metadata_ScriptManager.htm', NULL, NULL, NULL, NULL, NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('xtms_FileManager_intoFolder', 'xtms_FileManager_intoFolder', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'xtms_FileManager_intoFolder.htm', NULL, NULL, NULL, NULL, NULL, 'dsms', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_ControlM_deleteJob', 'metadata_ControlM_deleteJob', NULL, NULL, NULL, '2334', NULL, NULL, NULL, 'metadata_ControlM_deleteJob.htm', NULL, NULL, NULL, 'url', NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('demo', 'demo', NULL, NULL, NULL, '170', NULL, NULL, NULL, 'xtms_FileManager.htm', NULL, NULL, NULL, 'url', NULL, 'dsms', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('demo2', 'demo2', NULL, NULL, NULL, '180', NULL, NULL, NULL, 'xtms_FileManager.htm', NULL, 'Tab', 'tree', NULL, NULL, 'dsms', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dast-analyse', '数据标准分析', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metadata_DataStdAnalyse_showMDAnalyse.htm', NULL, NULL, NULL, NULL, NULL, 'dast', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dast-new', '新建标准', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_MetadataDisplay_newRootMetadata.htm', NULL, NULL, NULL, NULL, NULL, 'dast-view', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_ScriptManager_intoFolder', '脚本管理into', NULL, NULL, NULL, '2244', NULL, NULL, NULL, 'metadata_ScriptManager_intoFolder.htm', NULL, NULL, NULL, NULL, NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_ControlM_edit', '任务编辑', NULL, NULL, NULL, '2264', NULL, NULL, NULL, 'metadata_ControlM_edit.htm', NULL, NULL, NULL, 'url', NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('sys_roleResource_queryMetadataAuth', '元数据权限查询', NULL, NULL, NULL, '240', NULL, '/resource/images/menuico/120.gif', NULL, 'metaapp_RoleResource_newQueryMetadataAuth.htm', NULL, NULL, NULL, NULL, NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:3', '元模型导出', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metamodel_Classifier_exportSQL.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:10', '新增元模型', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metamodel_Classifier_addClassifier.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:11', '修改元模型', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metamodel_Classifier_updateClassifier.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-delete', '删除检核模板', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'dqms_DqKPITemplet_deleteDqKPITemplet.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-param-add', '新增模板参数', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'dqms_DqKPITemplet_addDqKPITempletPar.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-param-edit', '修改模板参数', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'dqms_DqKPITemplet_updateDqKPITempletPar.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-param-delete', '删除模板参数', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'dqms_DqKPITemplet_deleteDqKPITempletPar.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-param-query', '查询模板参数', NULL, NULL, NULL, '80', NULL, NULL, NULL, 'dqms_DqKPITemplet_queryDqKPITempletPar.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-param-auto', '自动生成参数', NULL, NULL, NULL, '90', NULL, NULL, NULL, 'dqms_DqKPITemplet_queryDqKPITempletByPage.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-param-order', '调整参数顺序', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'dqms_DqKPITemplet_adjustDqKPITempletParOrder.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-alarm-query', '查询告警设置', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'dqms_DqKPITemplet_queryDqAlertLevelByPage.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-param-autoGen', '自动生成参数', NULL, NULL, NULL, '150', NULL, NULL, NULL, 'dqms_DqKPITemplet_autoGenDqKPITempletPar.htm', NULL, 'tab', NULL, 'url', NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-exp-templet', '导出检核模板', NULL, NULL, NULL, '160', NULL, NULL, NULL, 'dqms_DqKPITemplet_exportDqKpiTemplet.htm', NULL, 'tab', NULL, 'url', NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_KPI', '检核指标', NULL, NULL, NULL, '30', NULL, 'resource/images/icons/mnuUIConstants.gif', NULL, 'dqms_DqKPI_home.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PLATFORM', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-tree-load', '检核指标树', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'dqms_DqKPI_getKPITree.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TASK_MGR', '元数据自动采集', NULL, NULL, NULL, '2', NULL, 'resource/images/icons/clock.png', NULL, 'metaextract_ExtractorTask_forward.htm?to=extractor/task/taskList.jsp', NULL, NULL, NULL, 'url', NULL, 'MM_EXTRACT', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TASK_MGR:1', '查询采集任务', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaextract_ExtractorTask_listExtractorTask.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TASK_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TASK_MGR:2', '增加采集任务', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaextract_ExtractorTask_addExtractorTask.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TASK_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TASK_MGR:3', '修改采集任务', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaextract_ExtractorTask_updateExtractorTask.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TASK_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TASK_MGR:4', '删除采集任务', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'metaextract_ExtractorTask_deleteExtractorTask.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TASK_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TASK_MGR:5', '挂起任务', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'metaextract_ExtractorTask_suspendTask.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TASK_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TASK_MGR:6', '继续任务', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'metaextract_ExtractorTask_resumeTask.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TASK_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TASK_MGR:7', '运行采集任务', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'metaextract_ExtractorTask_run.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TASK_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TASK_MGR:8', '更新任务时间', NULL, NULL, NULL, '80', NULL, NULL, NULL, 'metaextract_ExtractorTask_updateTimeExpression.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TASK_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT_MAN', '元数据手动采集', NULL, NULL, NULL, '3', NULL, 'resource/images/icons/cart.png', NULL, 'metaextract_ExtractManual_forwardUploadPage.htm', NULL, NULL, NULL, 'url', NULL, 'MM_EXTRACT', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT_MAN-1', '上传文件', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metaextract_ExtractManual_upload.htm', NULL, NULL, NULL, 'url', NULL, 'MM_EXTRACT_MAN', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT_MAN-2', '发起采集', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metaextract_ExtractManual_createTaskInstance.htm', NULL, NULL, NULL, 'url', NULL, 'MM_EXTRACT_MAN', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACTOR_LOG', '元数据采集监控', NULL, NULL, NULL, '4', NULL, 'resource/images/icons/page_dynamic.gif', NULL, 'metaextract_ExtractorLog_forward.htm?to=extractor/extractorLog/extractorLog.jsp', NULL, NULL, NULL, 'url', NULL, 'MM_EXTRACT', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACTOR_LOG:10', '采集日志导出SQL', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaextract_ExtractorLog_downloadTaskLog.htm', NULL, NULL, NULL, NULL, NULL, 'MM_EXTRACTOR_LOG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACTOR_LOG:20', '删除采集日志', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaextract_ExtractorLog_deleteExtractorLog.htm', NULL, NULL, NULL, NULL, NULL, 'MM_EXTRACTOR_LOG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACTOR_LOG:30', '高级删除采集日志', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaextract_ExtractorLog_deleteAdvancedExtractorLog.htm', NULL, NULL, NULL, NULL, NULL, 'MM_EXTRACTOR_LOG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACTOR_LOG:40', '取消任务', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'metaextract_ExtractorLog_cancelExtractorTask.htm', NULL, NULL, NULL, NULL, NULL, 'MM_EXTRACTOR_LOG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACTOR_LOG:50', '重新执行任务', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'metaextract_ExtractorLog_rerunExtractorTask.htm', NULL, NULL, NULL, NULL, NULL, 'MM_EXTRACTOR_LOG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACTOR_LOG:60', '清理任务', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'metaextract_ExtractorTask_clearBlockTask.htm', NULL, NULL, NULL, NULL, NULL, 'MM_EXTRACTOR_LOG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT_EXAAPP', '元数据采集审核', NULL, NULL, NULL, '5', NULL, 'resource/images/icons/joystick.png', NULL, 'metadata_ApproveOperate_forward.htm?to=approve/approveList.jsp', NULL, NULL, NULL, 'url', NULL, 'MM_EXTRACT', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT_EXAAPP:1', '查询待审批采集批次', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metadata_ApproveOperate_getApproveBatch.htm', NULL, NULL, NULL, NULL, NULL, 'MM_EXTRACT_EXAAPP', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT_EXAAPP:2', '全部审核通过', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metadata_ApproveOperate_approvePassAll.htm', NULL, NULL, NULL, NULL, NULL, 'MM_EXTRACT_EXAAPP', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT_EXAAPP:3', '全部审核拒绝', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metadata_ApproveOperate_approveRejectAll.htm', NULL, NULL, NULL, NULL, NULL, 'MM_EXTRACT_EXAAPP', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT_EXAAPP:5', '保存审核分支', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'metadata_Approve_saveApproveSetting.htm', NULL, NULL, NULL, NULL, NULL, 'MM_EXTRACT_EXAAPP', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATAMAP_RULE:1', '查询', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metaapp_DataMapRule_queryRule.htm', NULL, NULL, NULL, 'url', NULL, 'MM_DATAMAP_RULE', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATAMAP_RULE:2', '新增', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metaapp_DataMapRule_addRule.htm', NULL, NULL, NULL, 'url', NULL, 'MM_DATAMAP_RULE', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATAMAP_RULE:3', '修改', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metaapp_DataMapRule_updateRule.htm', NULL, NULL, NULL, 'url', NULL, 'MM_DATAMAP_RULE', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATAMAP_RULE:4', '删除', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'metaapp_DataMapRule_deleteRule.htm', NULL, NULL, NULL, 'url', NULL, 'MM_DATAMAP_RULE', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_MANAGE', '元数据管理', NULL, NULL, NULL, '2030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'meta', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_VERSION_MGR-1', '查询版本概要', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_Version_summarizeVersion.htm', NULL, NULL, NULL, 'url', NULL, 'MM_VERSION_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_VERSION_MGR-2', '查询版本树', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metadata_VersionTree_metadataTree.htm', NULL, NULL, NULL, 'url', NULL, 'MM_VERSION_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_VERSION_MGR-3', '差异比对', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metadata_MetadataCompare_compareVersionMetadatas.htm', NULL, NULL, NULL, 'url', NULL, 'MM_VERSION_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_VERSION_MGR-4', '版本恢复', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'metadata_Version_recoverVersionMetadata.htm.htm', NULL, NULL, NULL, 'url', NULL, 'MM_VERSION_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_VERSION_MGR-5', '导出版本数据', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'metadata_VersionTree_downloadVersionTree.htm', NULL, NULL, NULL, 'url', NULL, 'MM_VERSION_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ANALYSE_BATCH_DELETE', '删除分析任务', NULL, NULL, NULL, '2', NULL, NULL, NULL, 'metaapp_BatchAnalyse_deleteBatchAnalyseTask.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ANALYSE_BATCH_TASK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ANALYSE_BATCH_START', '启动分析任务', NULL, NULL, NULL, '3', NULL, NULL, NULL, 'metaapp_BatchAnalyse_startTask.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ANALYSE_BATCH_TASK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ANALYSE_BATCH_STOP', '停止分析任务', NULL, NULL, NULL, '4', NULL, NULL, NULL, 'metaapp_BatchAnalyse_stopTask.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ANALYSE_BATCH_TASK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ANALYSE_BATCH_UPDATE', '新增或更改分析任务', NULL, NULL, NULL, '5', NULL, NULL, NULL, 'metaapp_BatchAnalyse_addOrUpdateTask.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ANALYSE_BATCH_TASK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ANALYSE_BATCH_', '获取任务状态', NULL, NULL, NULL, '6', NULL, NULL, NULL, 'metaapp_BatchAnalyse_getTaskDetailStates.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ANALYSE_BATCH_TASK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ANALYSE_DOWNLOAD', '下载分析任务', NULL, NULL, NULL, '7', NULL, NULL, NULL, 'metaapp_BatchAnalyse_downloadAnalyseFile.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ANALYSE_BATCH_TASK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ANALYSE_BATCH_SHOWDETAIL', '展示分析明细', NULL, NULL, NULL, '8', NULL, NULL, NULL, 'metaapp_BatchAnalyse_showBatchAnalyseDetail.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ANALYSE_BATCH_TASK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ANALYSE_BATCH_LISTDETAIL', '查询批量采集任务明细', NULL, NULL, NULL, '221', NULL, NULL, NULL, 'metaapp_BatchAnalyse_listBatchAnalyseDetail.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ANALYSE_BATCH_TASK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ANALYSE_BATCH_QUERYBATCH', '查询元数据', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaapp_BatchAnalyse_queryBatchAnalyseDetails.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ANALYSE_BATCH_TASK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ANALYSE_DIFFERENCE:1', '两元数据比较', NULL, NULL, NULL, '0', NULL, NULL, NULL, 'metaapp_MetadataCompare_compareMetadata.htm', NULL, NULL, NULL, NULL, NULL, 'MM_ANALYSE_DIFFERENCE', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_CHECK_GoWIN', '新增检核窗口', NULL, NULL, NULL, '1', NULL, NULL, NULL, 'metaapp_Check_addMetadataStatusWin.htm', NULL, NULL, NULL, 'url', NULL, 'MM_CHECK_BASEDB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_CHECK_ADDORUPDATE', '新增/修改检核基准', NULL, NULL, NULL, '2', NULL, NULL, NULL, 'metaapp_Check_addOrUpdateCheckStatus.htm', NULL, NULL, NULL, 'url', NULL, 'MM_CHECK_BASEDB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_CHECK_DELETE', '删除检核基准', NULL, NULL, NULL, '3', NULL, NULL, NULL, 'metaapp_Check_deleteMetadataStatus.htm', NULL, NULL, NULL, 'url', NULL, 'MM_CHECK_BASEDB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_CHECK_EDIT', '修改检核基准窗口', NULL, NULL, NULL, '4', NULL, NULL, NULL, 'metaapp_Check_editMetadataStatusWin.htm', NULL, NULL, NULL, 'url', NULL, 'MM_CHECK_BASEDB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_CHECK_QUERYCONTRAST', '查询比对检核', NULL, NULL, NULL, '1', NULL, NULL, NULL, 'metaapp_Contrast_queryContrasts.htm', NULL, NULL, NULL, 'url', NULL, 'MM_CHECK_CHECK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_CHECK_OPENCONTRAST', '新增比对检核窗口', NULL, NULL, NULL, '1', NULL, NULL, NULL, 'metaapp_Contrast_openContrast.htm', NULL, NULL, NULL, 'url', NULL, 'MM_CHECK_CHECK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_CHECK_ADDCONTRAST', '新增比对检核', NULL, NULL, NULL, '2', NULL, NULL, NULL, 'metaapp_Contrast_addContrast.htm', NULL, NULL, NULL, 'url', NULL, 'MM_CHECK_CHECK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_CHECK_RUNCONTRAST', '运行比对检核', NULL, NULL, NULL, '4', NULL, NULL, NULL, 'metaapp_Contrast_runContrast.htm', NULL, NULL, NULL, 'url', NULL, 'MM_CHECK_CHECK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_CHECK_OPENRESULT', '查看比对检核结果', NULL, NULL, NULL, '5', NULL, NULL, NULL, 'metaapp_ContrastReport_openResult.htm', NULL, NULL, NULL, 'url', NULL, 'MM_CHECK_CHECK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_CHECK_UPDATECONTRAST', '更新比对检核', NULL, NULL, NULL, '15', NULL, NULL, NULL, 'metaapp_Contrast_updateContrast.htm', NULL, 'tab', 'tree', 'url', NULL, 'MM_CHECK_CHECK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_CHECK_DELETECONTRAST', '删除比对检核', NULL, NULL, NULL, '25', NULL, NULL, NULL, 'metaapp_Contrast_deleteContrast.htm', NULL, 'tab', 'tree', 'url', NULL, 'MM_CHECK_CHECK', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_CHECK_QUERY_OPENRESULT', '查看比对检核结果', NULL, NULL, NULL, '1', NULL, NULL, NULL, 'metaapp_ContrastReport_openResult.htm', NULL, NULL, NULL, 'url', NULL, 'MM_CHECK_QUERY', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAEXPORT', '元数据导出', NULL, NULL, NULL, '221', NULL, 'resource/images/icons/database_save.png', NULL, 'metadata_MetaExport_forward.htm?to=metaexport/exporttree.jsp', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXP-1', '元数据导出', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_MetaExport_export.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAEXPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXP-2', '检测导出状态', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metadata_MetaExport_isExportComplete.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAEXPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR', '元数据管理(用于权限控制)', NULL, NULL, NULL, '2110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:0', '显示元数据树', NULL, NULL, NULL, '0', NULL, NULL, NULL, 'metadata_Metadata_metadataTree.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:1', '新增元数据', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metadata_Metadata_addMetadata.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR_EDITMETA', '修改元数据', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metadata_Metadata_editMetadata.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR_DELETEMETA', '删除元数据', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metadata_Metadata_deleteMetadata.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:20', '新建依赖关系', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'metadata_Metadata_addRelations.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:21', '删除依赖关系', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'metadata_Metadata_deleteRelations.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:10', '全文检索', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'metadata_FullTextSearch_search.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:9', '打开一个Tab页显示查询结果', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'metadata_FullTextSearch_requestSearch.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:2', '发布新版本', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metadata_Version_releaseVersion.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:3', '查询元数据版本', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metadata_Version_listVersion.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:11', '查询元数据修改痕迹', NULL, NULL, NULL, '125', NULL, NULL, NULL, 'metadata_Edition_listEdition.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:4', '恢复历史元数据', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'metadata_Edition_recoverEditionMetadata.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:5', '恢复版本元数据', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'metadata_Version_recoverVersionMetadata.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:7', '血统分析转发', NULL, NULL, NULL, '200', NULL, NULL, NULL, 'metaapp_Analyse_dispatchLineage.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:8', '影响分析转发', NULL, NULL, NULL, '210', NULL, NULL, NULL, 'metaapp_Analyse_dispatchImpact.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:6', 'ETL调度分析', NULL, NULL, NULL, '220', NULL, NULL, NULL, 'metaapp_Analyse_etlJob.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:30', '比对历史数据', NULL, NULL, NULL, '230', NULL, NULL, NULL, 'metadata_MetadataCompare_compareEditionMetadatas.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:31', '比对版本数据', NULL, NULL, NULL, '240', NULL, NULL, NULL, 'metadata_MetadataCompare_compareVersionMetadatas.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:40', '分析结果导出文件', NULL, NULL, NULL, '250', NULL, NULL, NULL, 'metaapp_Analyse_downAnalyseFile.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:41', '分析结果导出图片', NULL, NULL, NULL, '260', NULL, NULL, NULL, 'metaapp_Analyse_downAnalyseImage.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METADATA_MGR:50', '元数据导出', NULL, NULL, NULL, '270', NULL, NULL, NULL, 'metadata_MetaExport_download.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR', '元模型管理(用于权限控制)', NULL, NULL, NULL, '2112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:0', '显示元模型树', NULL, NULL, NULL, '0', NULL, NULL, NULL, 'metamodel_Package_tree.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:1', '添加根包', NULL, NULL, NULL, '5', NULL, NULL, NULL, 'metamodel_Package_addPackage.htm', NULL, NULL, NULL, NULL, NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:2', '元模型门户', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metamodel_Package_gotoMMPortal.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms', '数据质量', NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, NULL, 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_PLATFORM', '数据质量', NULL, NULL, NULL, '1010', NULL, '242.gif', NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'dqms', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-query', '查询检核模板', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'dqms_DqKPITemplet_queryDqKPITempletByPage.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-add', '新增检核模板', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'dqms_DqKPITemplet_addDqKPITemplet.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-templet-edit', '修改检核模板', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'dqms_DqKPITemplet_updateDqKPITemplet.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_TEMPLET', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:12', '删除用户视图', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metaapp_UserView_deleteUserView.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:13', '删除用户视图文件夹', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'metaapp_UserView_deleteUserViewFolder.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:14', '删除页码数据', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'metaapp_UserView_deleteViewPage.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:15', '删除用户视图元数据', NULL, NULL, NULL, '150', NULL, NULL, NULL, 'metaapp_UserView_deleteViewMetadata.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('添加对比', 'dqms_DqCompareData_addDqCompareData', NULL, NULL, NULL, '100', NULL, '004.gif', NULL, 'dqms_DqCompareData_addDqCompareData.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_PLATFORM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms_DqCompareData_runDqCompareData', '开始对比', NULL, NULL, NULL, '100', NULL, '015.gif', NULL, 'dqms_DqCompareData_runDqCompareData.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_PLATFORM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms_DqCompareData_deleteDqCompareData', '删出对比', NULL, NULL, NULL, '110', NULL, '154.gif', NULL, 'dqms_DqCompareData_deleteDqCompareData.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_PLATFORM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('EXP_SUPPLIER_METADATA', '关联信息导出-提供者', NULL, NULL, NULL, '150', NULL, NULL, NULL, 'metaapp_BizMetadata_exportSupplierMetadata.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAEXPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('EXP_CONSUMER_METADATA', '关联信息导出-消费者', NULL, NULL, NULL, '160', NULL, NULL, NULL, 'metaapp_BizMetadata_exportConsumerMetadata.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAEXPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-new', '用户管理(新)', NULL, NULL, NULL, '245', NULL, NULL, NULL, 'frame_HyRole_newAuthUser.htm', NULL, NULL, NULL, 'url', NULL, 'system-system-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-menu-manager-1', '菜单授权', NULL, NULL, NULL, '80', NULL, '016.gif', NULL, 'frame_HyMenu_newExecute.htm', NULL, NULL, NULL, 'url', NULL, 'system-menu-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-menuRelation-(new)', '菜单授权', NULL, NULL, NULL, '190', NULL, NULL, NULL, 'frame_HyRole_newAuthMenu.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-auth-metamodel-(new)', '元模型', NULL, NULL, NULL, '200', NULL, NULL, NULL, 'metaapp_RoleResource_newOpenMetamodelAuthWin.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-auth-metadata-(new)', '元数据', NULL, NULL, NULL, '210', NULL, NULL, NULL, 'metaapp_RoleResource_newOpenMetadataAuthWin.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-auth-datasource-(new)', '采集数据源', NULL, NULL, NULL, '220', NULL, NULL, NULL, 'metaapp_RoleResource_newOpenDatasourceAuthWin.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-auth-dataview-(new)', '系统视图', NULL, NULL, NULL, '230', NULL, NULL, NULL, 'metaapp_DataViewAuth_newOpenAuthDataWin.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DEL_ATTATCH_METADATA', '元数据附件删除', NULL, NULL, NULL, '300', NULL, NULL, NULL, 'metaapp_BizMetadata_delFile.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DOWN_ATTATCH_METADATA', '元数据附件下载', NULL, NULL, NULL, '290', NULL, NULL, NULL, 'metaapp_BizMetadata_downFile.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('UPLOAD_ATTATCH_METADATA', '元数据附件上传', NULL, NULL, NULL, '280', NULL, NULL, NULL, 'metaapp_BizMetadata_uploadAttatch.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METADATA_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dsms', '测试管理', NULL, NULL, NULL, '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, NULL, 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('ds_manager', '变更需求管理', NULL, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'dsms', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('ds_manager_req', '新增变更需求', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'xtms_AlterRequire_saveAlterReq.htm', NULL, NULL, NULL, 'url', NULL, 'ds_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('req_modfiy', '修改变更需求', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'xtms_AlterRequire_updateAlterReq.htm', NULL, NULL, NULL, 'url', NULL, 'ds_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('req_delete', '删除变更需求', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'xtms_AlterRequire_deleteAlterReq.htm', NULL, NULL, NULL, 'url', NULL, 'ds_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('close_req', '关闭变更需求', NULL, NULL, NULL, '160', NULL, NULL, NULL, 'xtms_RequireDetail_overAlterRecode.htm', NULL, NULL, NULL, 'url', NULL, 'ds_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('Alter_Entry', '新增变更登记', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'xtms_RequireDetail_saveAlterRecode.htm', NULL, NULL, NULL, 'url', NULL, 'ds_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('Alter_Entry_Modfiy', '修改变更登记', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'xtms_RequireDetail_updateAlterRecode.htm', NULL, NULL, NULL, 'url', NULL, 'ds_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('Alter_Entry_Delete', '删除变更登记', NULL, NULL, NULL, '150', NULL, NULL, NULL, 'xtms_RequireDetail_deleteAlterRecode.htm', NULL, NULL, NULL, 'url', NULL, 'ds_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('logger_entry', '变更日志归档', NULL, NULL, NULL, '170', NULL, NULL, NULL, 'xtms_RequireDetail_saveLogger.htm', NULL, NULL, NULL, 'url', NULL, 'ds_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('enWord-add', '新增英文词根', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_EnWordList_addEnWord.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('enWord-delete', '删除英文词根', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metadata_EnWordList_deleteEnWord.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('enWord-update', '更新英文词根', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metadata_EnWordList_updateEnWord.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('chnWord-add', '新增中文词根', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'metadata_ChnWordList_addChnWord.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('chnWord-delete', '删除中文词根', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'metadata_ChnWordList_deleteChnWord.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-templet-param-query', '查询模板参数', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'dqms_DqKPITemplet_queryDqKPITempletPar.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-templet-add', '根据模板新建指标', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'dqms_DqKPI_createDqKPIBaseOnTemplet.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-query', '查询检核指标', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'dqms_DqKPI_getDqKPIProperty.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-delete', '删除检核指标', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'dqms_DqKPI_deleteDqKPI.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-add', '新增检核指标', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'dqms_DqKPI_addDqKPI.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-edit', '修改检核指标', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'dqms_DqKPI_updateDqKPI.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-templet-query', '查询检核模板', NULL, NULL, NULL, '80', NULL, NULL, NULL, 'dqms_DqKPITemplet_queryDqKPITempletByPage.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-exp-templet', '下载指标模板', NULL, NULL, NULL, '90', NULL, NULL, NULL, 'dqms_DqKPI_exportDqKpiTemplet.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-exp-dqkpi', '导出检核指标', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'dqms_DqKPI_exportDqKpiList.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-imp-dqkpi', '导入检核指标', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'dqms_DqKPI_importDqKpiRecord.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-checkSql', '检查检核语句语法', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'dqms_DqKPI_executeDqKPI.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpi-runManual', '手动运行检核', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'dqms_DqKPI_runDqKPI.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_KPI', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_RESULT', '检核结果', NULL, NULL, NULL, '40', NULL, 'resource/images/icons/chart_line.png', NULL, 'dqms_DqCheckResult_home.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PLATFORM', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-result-query', '查询检核结果', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'dqms_DqCheckResult_queryDqResultByPage.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_RESULT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-result-info', '显示检核结果', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'dqms_DqCheckResult_getDqResultProperty.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_RESULT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-result-property', '显示指标属性', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'dqms_DqKPI_getDqKPIProperty.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_RESULT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-result-create-prob', '创建检核问题', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'dqms_DqProblemList_createDqProblemByDqResult.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_RESULT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-result-classfy-query', '查询问题归类', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'dqms_DqProblemList_queryDqProblemTypeByPage.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_RESULT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-result-detail-query', '查询明细数据', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'dqms_DqCheckResult_queryDqResultDetail.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_RESULT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_PROBLEM', '缺陷列表', NULL, NULL, NULL, '50', NULL, 'resource/images/icons/if.gif', NULL, 'dqms_DqProblemList_home.htm', NULL, NULL, NULL, 'url', NULL, 'problem_manage', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-query', '查询问题列表', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'dqms_DqProblemList_queryDqProblemByPage.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-add', '新建问题', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'dqms_DqProblemList_addDqProblem.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-edit', '修改问题', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'dqms_DqProblemList_updateDqProblem.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-delete', '删除问题', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'dqms_DqProblemList_deleteDqProblem.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-export', '导出问题列表', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'dqms_DqProblemList_exportDqProblemList.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-classfy-view', '显示问题归类', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'dqms_DqProblemList_getDqProblemTypeProperty.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-kpi-property', '显示指标属性', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'dqms_DqProblemList_queryDqProblemByPage.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-result-info', '显示检核结果', NULL, NULL, NULL, '80', NULL, NULL, NULL, 'dqms_DqProblemList_queryDqProblemByPage.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-detail-query', '查询问题数据', NULL, NULL, NULL, '90', NULL, NULL, NULL, 'dqms_DqCheckResult_queryDqResultDetail.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-faq-induceFaq', '纳入问题知识库', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'dqms_DqFaq_addDqFaqByInduce.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_EXAMLOG', '检核日志', NULL, NULL, NULL, '60', NULL, 'resource/images/icons/datetime.gif', NULL, 'dqms_DqExamLog_home.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PLATFORM', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-examLog-query', '检核日志查询', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'dqms_DqExamLog_queryExamLogByPage.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_EXAMLOG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-faqprob-tree-load', '常见问题列表树', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'dqms_DqFaq_getDqFaqTree.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_FAQPROB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-faqprob-classfy-query', '查询常见问题归类', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'dqms_DqFaq_queryFaqClass.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_FAQPROB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-faqprob-classfy-add', '新增常见问题归类', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'dqms_DqFaq_addDqFaqClass.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_FAQPROB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-faqprob-classfy-edit', '修改常见问题归类', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'dqms_DqFaq_updateDqFaqClass.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_FAQPROB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-faqprob-classfy-delete', '删除常见问题归类', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'dqms_DqFaq_delDqFaqClass.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_FAQPROB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-faqprob-add', '新增常见问题', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'dqms_DqFaq_addDqFaq.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_FAQPROB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-faqprob-edit', '修改常见问题', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'dqms_DqFaq_updateDqFaq.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_FAQPROB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-faqprob-delete', '删除常见问题', NULL, NULL, NULL, '80', NULL, NULL, NULL, 'dqms_DqFaq_delDqFaq.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_FAQPROB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-faqprob-swap', '变更问题归类', NULL, NULL, NULL, '90', NULL, NULL, NULL, 'dqms_DqFaq_changeClassifyParent.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_FAQPROB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-faqprob-classfy-item-info', '获取问题归类信息', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'dqms_DqFaq_getDqFaqClass.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_FAQPROB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-associateSystemSchema', '系统关联数据库', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_associateSystemSchema.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-associateSystemLvlSchema', '系统层次关联数据库', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_associateSystemLvlSchema.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-saveApStmUser', '保存系统用户信息', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_saveApStmUser.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-loadListStm', '所属系统下拉选项', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_loadListStm.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-loadListMgr', ' 查询数据负责人下拉选项', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_loadListMgr.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manager-deleteSysSchemaRela', '删除系统关联数据库', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metadata_ApStm_deleteSysSchemaRela.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('controlM-createFile', '创建文件夹', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metadata_ScriptManager_createFolder.htm', NULL, NULL, NULL, 'url', NULL, 'controlM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('controlM-delFire', '删除文件', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metadata_ScriptManager_delFile.htm', NULL, NULL, NULL, 'url', NULL, 'controlM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DSMS_EXP_DICT_DOMAIN', '数据标准-数据类型/数据字典列表导出', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metaapp_BizMetadata_exportDictAndDomain.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAEXPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DSMS_EXP_CUST_SUBJECT', '数据标准-信息项导出', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'metaapp_BizMetadata_exportSubject.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAEXPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('EXP_CHILD_METADATA', '下级元数据导出', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'metaapp_BizMetadata_exportChildMetadata.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAEXPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-faqprob-item-info', '获取问题信息', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'dqms_DqFaq_getDqFaq.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_FAQPROB', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_SYSMANT', '参数维护', NULL, NULL, NULL, '1030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'dqms', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_DQSYSTEM', '系统表', NULL, NULL, NULL, '10', NULL, 'resource/images/icons/icon_monitor_pc.gif', NULL, 'dqms_DqSystem_home.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_SYSMANT', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-dqsystem-manager-add', '新增系统', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'dqms_DqSystem_addDqSystem.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_DQSYSTEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-dqsystem-manager-edit', '修改系统', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'dqms_DqSystem_updateDqSystem.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_DQSYSTEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-dqsystem-manager-delete', '删除系统', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'dqms_DqSystem_deleteDqSystem.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_DQSYSTEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-dqsystem-manager-updateuser', '配置用户与系统关系', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'dqms_DqSystem_saveDqSystemUser.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_DQSYSTEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-dqsystem-manager-query', '系统表查询', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'dqms_DqSystem_querDqSystemList.htm', NULL, 'tab', NULL, 'url', NULL, 'DQMS_DQSYSTEM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('SYS_DEPART', '部门表', NULL, NULL, NULL, '20', NULL, 'resource/images/icons/group.png', NULL, 'dqms_SysDepart_home.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_SYSMANT', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-sysDepart-add', '新增部门信息', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'dqms_SysDepart_addSysDepart.htm', NULL, NULL, NULL, NULL, NULL, 'SYS_DEPART', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-sysDepart-edit', '编辑部门信息', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'dqms_SysDepart_updateSysDepart.htm', NULL, NULL, NULL, NULL, NULL, 'SYS_DEPART', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-sysDepart-delete', '删除部门信息', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'dqms_SysDepart_deleteSysDepart.htm', NULL, NULL, NULL, NULL, NULL, 'SYS_DEPART', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-sysDepart-query', '部门表查询', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'dqms_SysDepart_querySysDepartList.htm', NULL, NULL, NULL, 'url', NULL, 'SYS_DEPART', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_KPICLASS', '检核指标归类', NULL, NULL, NULL, '30', NULL, 'resource/images/icons/ext_singleton.gif', NULL, 'dqms_DqKPI_classhome.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_SYSMANT', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpiClass-classfy-add', '新建', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'dqms_DqKPI_addDqKPIClass.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPICLASS', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpiClass-classfy-edit', '编辑', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'dqms_DqKPI_updateDqKPIClass.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPICLASS', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpiClass-classfy-delete', '删除', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'dqms_DqKPI_deleteDqKPIClass.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_KPICLASS', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-kpiClass-tree-query', '获取检核指标归类树', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'dqms_DqKPI_getKPIClassTree.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_KPICLASS', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_PROBLEMCLASS', '问题归类', NULL, NULL, NULL, '40', NULL, 'resource/images/icons/mnuHelp.gif', NULL, 'dqms_DqProblemList_classhome.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_SYSMANT', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-classfy-query', '查询问题归类', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'dqms_DqProblemList_queryDqProblemTypeByPage.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEMCLASS', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-classfy-add', '新增问题归类', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'dqms_DqProblemList_addDqProblemType.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEMCLASS', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-classfy-edit', '修改问题归类', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'dqms_DqProblemList_updateDqProblemType.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEMCLASS', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-problem-classfy-delete', '删除问题归类', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'dqms_DqProblemList_deleteDqProblemType.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_PROBLEMCLASS', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_ALERTLEVEL', '告警级别设置', NULL, NULL, NULL, '50', NULL, 'resource/images/icons/bell.png', NULL, 'dqms_DqAlertLevel_home.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_SYSMANT', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-alert-level-query', '查询告警设置', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'dqms_DqAlertLevel_queryDqAlertLevelByPage.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_ALERTLEVEL', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-alert-level-add', '新增告警设置', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'dqms_DqAlertLevel_addDqAlertLevel.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_ALERTLEVEL', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-alert-level-edit', '修改告警设置', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'dqms_DqAlertLevel_updateDqAlertLevel.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_ALERTLEVEL', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms-alert-level-delete', '删除告警设置', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'dqms_DqAlertLevel_deleteDqAlertLevel.htm', NULL, NULL, NULL, NULL, NULL, 'DQMS_ALERTLEVEL', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_REPORT', '缺陷报告', NULL, NULL, NULL, '70', NULL, 'bottom2.gif', NULL, 'dqms_DqReport_home.htm', NULL, 'tab', NULL, 'url', NULL, 'problem_manage', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_REPORT_EXPORT', '数据质量导出', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'dqms_DqReport_exportDqReport.htm', NULL, 'tab', NULL, 'url', NULL, 'DQMS_REPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_REPORT_queryDqKpiView', '查询指标概览', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'dqms_DqReport_queryDqKpiView.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_REPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_REPORT_queryDqProblemView', '查询问题概览', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'dqms_DqReport_queryDqProblemView.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_REPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_REPORT_querySolverPro', '查询解决问题（12个月）', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'dqms_DqReport_querySolverPro.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_REPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_REPORT_queryDqProblemBySystem', '查询问题（分系统）', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'dqms_DqReport_queryDqProblemBySystem.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_REPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_REPORT_queryNoSolvePro', '查询遗留问题', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'dqms_DqReport_queryNoSolvePro.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_REPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DQMS_REPORT_queryDqAlert', '查询告警指标明细', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'dqms_DqReport_queryDqAlert.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_REPORT', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('meta', '元数据平台', NULL, NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, NULL, 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACTOR', '元数据采集准备', NULL, NULL, NULL, '2010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'meta', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TEMPLATE_MENU:1', '查看类属性列表', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaextract_Template_queryTpls.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TEMPLATE_MENU', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TEMPLATE_MENU:2', '新增模板', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaextract_Template_addTpl.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TEMPLATE_MENU', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TEMPLATE_MENU:3', '弹出模板信息页面', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaextract_Template_openTpl.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TEMPLATE_MENU', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TEMPLATE_MENU:4', '删除模板', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'metaextract_Template_deleteTpls.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TEMPLATE_MENU', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TEMPLATE_MENU:5', '下载模板', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'metaextract_Template_downloadTpl.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TEMPLATE_MENU', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TEMPLATEMAP_MENU', '模板映射管理', NULL, NULL, NULL, '2', NULL, 'resource/images/icons/page_excel.png', NULL, 'metaextract_Template_forward.htm?to=template/tplmaplist.jsp', NULL, NULL, NULL, NULL, NULL, 'MM_EXTRACTOR', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TEMPLATEMAP_MENU:1', '增加模板信息', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaextract_Template_addTplMapInfo.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TEMPLATEMAP_MENU', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TEMPLATEMAP_MENU:2', '打开类配置页面', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaextract_Template_openClsConf.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TEMPLATEMAP_MENU', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TEMPLATEMAP_MENU:3', '删除模板', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaextract_Template_delTplMapInfos.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TEMPLATEMAP_MENU', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TEMPLATEMAP_MENU:4', '读取sheet列表', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'metaextract_Template_initSheetList.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TEMPLATEMAP_MENU', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TEMPLATEMAP_MENU:5', '获取元模型子树', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'metamodel_Package_subMetaModelTree.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TEMPLATEMAP_MENU', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_TEMPLATEMAP_MENU:6', '初始化sheet配置', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'metaextract_Template_initSheetConf.htm', NULL, NULL, NULL, NULL, NULL, 'MM_TEMPLATEMAP_MENU', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_MM_MAPPING:1', '查询目录模型映射列表', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaextract_DirModelMapping_queryDirMmMapping.htm', NULL, NULL, NULL, NULL, NULL, 'MM_MM_MAPPING', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_MM_MAPPING:2', '添加模型映射', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaextract_DirModelMapping_addDirMm.htm', NULL, NULL, NULL, NULL, NULL, 'MM_MM_MAPPING', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_MM_MAPPING:3', '删除模型目录映射', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaextract_DirModelMapping_deleteDirMmMapping.htm', NULL, NULL, NULL, NULL, NULL, 'MM_MM_MAPPING', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DIR_MAPPING:1', '查询模型映射', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaextract_DirMapping_queryDirMapping.htm', NULL, NULL, NULL, NULL, NULL, 'MM_DIR_MAPPING', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DIR_MAPPING:2', '添加模型映射', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaextract_DirMapping_addDir.htm', NULL, NULL, NULL, NULL, NULL, 'MM_DIR_MAPPING', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DIR_MAPPING:3', '删除目录映射的目录', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaextract_DirMapping_deleteDirMapping.htm', NULL, NULL, NULL, NULL, NULL, 'MM_DIR_MAPPING', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DIR_MAPPING:4', '运行目录映射', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'metaextract_DirMapping_runDirMapping.htm', NULL, NULL, NULL, NULL, NULL, 'MM_DIR_MAPPING', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_RECORD_CFG:1', '查询配置', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaextract_RecordExtra_queryRecordCfg.htm', NULL, NULL, NULL, NULL, NULL, 'MM_RECORD_CFG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_RECORD_CFG:2', '保存配置', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaextract_RecordExtra_saveRecordCfg.htm', NULL, NULL, NULL, NULL, NULL, 'MM_RECORD_CFG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_RECORD_CFG:3', '打开新增/修改配置页面', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaextract_RecordExtra_openRecordCfg.htm', NULL, NULL, NULL, NULL, NULL, 'MM_RECORD_CFG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_RECORD_CFG:4', '删除配置', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'metaextract_RecordExtra_deleteRecordCfg.htm', NULL, NULL, NULL, NULL, NULL, 'MM_RECORD_CFG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_RECORD_CFG:5', '预览SQL脚本的数据', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'metaextract_RecordExtra_previewData.htm', NULL, NULL, NULL, NULL, NULL, 'MM_RECORD_CFG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_RECORD_CFG:6', '测试数据库连接', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'metaextract_RecordExtra_testConnection.htm', NULL, NULL, NULL, NULL, NULL, 'MM_RECORD_CFG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_RECORD_CFG:8', '获取元模型子树', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'metamodel_Package_subMetaModelTree.htm', NULL, NULL, NULL, 'url', NULL, 'MM_RECORD_CFG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_RECORD_CFG:9', '检测数据源可用性', NULL, NULL, NULL, '80', NULL, NULL, NULL, 'metaextract_RecordExtra_checkDatasourceAvailable.htm', NULL, NULL, NULL, 'url', NULL, 'MM_RECORD_CFG', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT', '元数据采集', NULL, NULL, NULL, '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'meta', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATASOURCE_MGR', '数据源管理', NULL, NULL, NULL, '1', NULL, 'resource/images/icons/database.png', NULL, 'metaextract_HarvestDatasource_forward.htm?to=extractor/datasource/datasourceList.jsp', NULL, NULL, NULL, 'url', NULL, 'MM_EXTRACTOR', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATASOURCE_MGR:1', '查询全部的数据源', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaextract_HarvestDatasource_listDatasource.htm', NULL, NULL, NULL, NULL, NULL, 'MM_DATASOURCE_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATASOURCE_MGR:2', '增加数据源', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaextract_HarvestDatasource_addDatasource.htm', NULL, NULL, NULL, NULL, NULL, 'MM_DATASOURCE_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATASOURCE_MGR:3', '修改数据源', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaextract_HarvestDatasource_updateDatasource.htm', NULL, NULL, NULL, NULL, NULL, 'MM_DATASOURCE_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATASOURCE_MGR:4', '删除数据源', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'metaextract_HarvestDatasource_deleteDatasource.htm', NULL, NULL, NULL, NULL, NULL, 'MM_DATASOURCE_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATASOURCE_MGR:6', '建立角色与数据源的关系', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'metaapp_RoleResource_assignRoleToDatasource.htm', NULL, NULL, NULL, NULL, NULL, 'MM_DATASOURCE_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATASOURCE_MGR:7', '测试数据源连接', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'metaextract_HarvestDatasource_testConnect.htm', NULL, NULL, NULL, NULL, NULL, 'MM_DATASOURCE_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-menu-manager-menuItem-save', '菜单国际化保存', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'frame_HyMenu_saveMenuI18n.htm', NULL, NULL, 'tree', 'url', NULL, 'system-menu-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager', '角色管理', NULL, NULL, '0', '15', NULL, '357.gif', NULL, 'frame_HyRole.htm', NULL, NULL, NULL, NULL, NULL, 'system-system-manager', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-query', '查询角色', NULL, NULL, '0', '1', NULL, NULL, NULL, 'frame_HyRole_queryRole.htm', NULL, NULL, NULL, NULL, NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-tree-load', '获取菜单树', NULL, NULL, '0', '10', NULL, NULL, NULL, 'frame_HyMenu_getMenuTreeOfRole.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-add', '新增角色', NULL, NULL, '0', '30', NULL, NULL, NULL, 'frame_HyRole_addRole.htm', NULL, NULL, NULL, NULL, NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-edit', '修改角色', NULL, NULL, '0', '35', NULL, NULL, NULL, 'frame_HyRole_updateRole.htm', NULL, NULL, NULL, NULL, NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-delete', '删除角色', NULL, NULL, '0', '40', NULL, NULL, NULL, 'frame_HyRole_deleteRole.htm', NULL, NULL, NULL, NULL, NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-authMenu-open', '打开菜单权限窗口', NULL, NULL, '0', '70', NULL, NULL, NULL, 'frame_HyRole_authMenu.htm', NULL, NULL, NULL, NULL, NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-batch-queryNotPrivilegedDefine', '获取未分配查询方案', NULL, NULL, NULL, '90', NULL, NULL, NULL, 'freequery_FreeQuery_queryNotPrivilegedDefine.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-batch-queryPrivilegedDefine', '获取已分配查询方案', NULL, NULL, NULL, '95', NULL, NULL, NULL, 'freequery_FreeQuery_queryPrivilegedDefine.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-batch-savePrivilegeDefine', '保存批量查询方案分配', NULL, NULL, NULL, '96', NULL, NULL, NULL, 'freequery_FreeQuery_savePrivilegeDefine.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-menuRelation-save', '保存菜单权限', NULL, NULL, '0', '100', NULL, NULL, NULL, 'frame_HyRole_saveRoleMenuRelation.htm', NULL, NULL, NULL, NULL, NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-authUser-open', '打开用户分配窗口', NULL, NULL, '0', '110', NULL, NULL, NULL, 'frame_HyRole_authUser.htm', NULL, NULL, NULL, NULL, NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-userRelation-save', '分配用户权限', NULL, NULL, '0', '120', NULL, NULL, NULL, 'frame_HyRole_saveRoleUserRelation.htm', NULL, NULL, NULL, NULL, NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-auth-metadata', '元数据授权', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'metaapp_RoleResource_saveMetadataAuth.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-auth-metamodel', '元模型授权', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'metaapp_RoleResource_saveMetamodelAuth.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-auth-datasource', '采集数据源授权', NULL, NULL, NULL, '150', NULL, NULL, NULL, 'metaapp_RoleResource_assignDatasourceToRole.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-auth-dataview', '系统视图授权', NULL, NULL, NULL, '160', NULL, NULL, NULL, 'metaapp_DataViewAuth_createDataViewRoleLink.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-auth-metamodel-inherit', '元模型继承上级权限', NULL, NULL, NULL, '170', NULL, NULL, NULL, 'metaapp_RoleResource_inheritMetamodelAuth.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-role-manager-auth-metadata-inherit', '元数据继承上级权限', NULL, NULL, NULL, '180', NULL, NULL, NULL, 'metaapp_RoleResource_inheritMetadataAuth.htm', NULL, NULL, NULL, 'url', NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager', '用户管理', NULL, NULL, '0', '20', NULL, '016.gif', NULL, 'frame_HyUser_open.htm', NULL, NULL, NULL, NULL, NULL, 'system-system-manager', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-query', '查询用户', NULL, NULL, '0', '10', NULL, NULL, NULL, 'frame_HyUser_queryUser.htm', NULL, NULL, NULL, NULL, NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-add', '新增用户', NULL, NULL, '0', '20', NULL, NULL, NULL, 'frame_HyUser_addUser.htm', NULL, NULL, NULL, NULL, NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-delete', '删除用户', NULL, NULL, '0', '30', NULL, NULL, NULL, 'frame_HyUser_deleteUsers.htm', NULL, NULL, NULL, NULL, NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-edit', '修改用户', NULL, NULL, '0', '40', NULL, NULL, NULL, 'frame_HyUser_updateUser.htm', NULL, NULL, NULL, NULL, NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-unLock', '密码解锁', NULL, NULL, '0', '50', NULL, NULL, NULL, 'frame_HyUser_unlockUser.htm', NULL, NULL, NULL, NULL, NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-reset', '密码重置', NULL, NULL, '0', '60', NULL, NULL, NULL, 'frame_HyUser_resetUserPwd.htm', NULL, NULL, NULL, NULL, NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-role-manager', '角色管理', NULL, NULL, '0', '65', NULL, NULL, NULL, 'frame_HyUser_manageRole.htm', NULL, NULL, NULL, NULL, NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-roleRelation-save', '分配角色', NULL, NULL, '0', '70', NULL, NULL, NULL, 'frame_HyUser_saveUserRoleRelation.htm', NULL, NULL, NULL, NULL, NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-role-query', '查询角色', NULL, NULL, '0', '80', NULL, NULL, NULL, 'frame_HyUser_queryRole.htm', NULL, NULL, NULL, NULL, NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-orgRelation-query', '查询机构', NULL, NULL, '0', '100', NULL, NULL, NULL, 'frame_HyOrg_getOrgTreeForUser.htm', NULL, NULL, NULL, 'url', NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-orgRelation-save', '保存机构设置', NULL, NULL, '0', '110', NULL, NULL, NULL, 'frame_HyUser_saveUserOrgRelation.htm', NULL, NULL, 'tree', 'url', NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-getOperator', '进入申请人界面', NULL, NULL, '0', '120', NULL, NULL, NULL, 'frame_HyUser_openOperatorWin.htm', NULL, NULL, NULL, 'url', NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-password-modify', '修改密码', NULL, NULL, '0', '35', NULL, '330.gif', NULL, 'frame_HyUser_openChangePassword.htm', NULL, NULL, NULL, NULL, NULL, 'system-system-manager', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-orgn-manager-tree-load', '机构树', NULL, NULL, '0', '10', NULL, NULL, NULL, 'frame_HyOrg_getOrgTree.htm', NULL, NULL, NULL, NULL, NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-orgn-manager-load', '查看机构', NULL, NULL, '0', '20', NULL, NULL, NULL, 'frame_HyOrg_loadOrg.htm', NULL, NULL, NULL, NULL, NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-orgn-manager-add', '新增机构', NULL, NULL, '0', '30', NULL, NULL, NULL, 'frame_HyOrg_addOrg.htm', NULL, NULL, NULL, NULL, NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-orgn-manager-edit', '修改机构', NULL, NULL, '0', '35', NULL, NULL, NULL, 'frame_HyOrg_updateOrg.htm', NULL, NULL, NULL, NULL, NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-orgn-manager-delete', '删除机构', NULL, NULL, '0', '40', NULL, NULL, NULL, 'frame_HyOrg_deleteOrg.htm', NULL, NULL, NULL, NULL, NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-orgn-manager-swapOrder', '调整机构顺序', NULL, NULL, '0', '50', NULL, NULL, NULL, 'frame_HyOrg_swapOrgOrder.htm', NULL, NULL, NULL, NULL, NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-orgn-manager-authorizeMenu-open', '菜单授权页', NULL, NULL, '0', '60', NULL, NULL, NULL, 'frame_HyOrg_openAuthorizeMenuWin.htm', NULL, NULL, NULL, NULL, NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-orgn-manager-authorizeReport-open', '报表授权页', NULL, NULL, '0', '70', NULL, NULL, NULL, 'frame_HyOrg_openAuthorizeReportWin.htm', NULL, NULL, NULL, NULL, NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-orgn-manager-menuRelation-save', '保存菜单权限', NULL, NULL, '0', '80', NULL, NULL, NULL, 'frame_HyOrg_saveOrgMenuRelation.htm', NULL, NULL, NULL, NULL, NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-orgn-manager-reportRelation-save', '保存报表权限', NULL, NULL, '0', '90', NULL, NULL, NULL, 'frame_HyOrg_saveOrgReportRelation.htm', NULL, NULL, NULL, NULL, NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-orgn-manager-menuTreeAuthing-query', '授权菜单树', NULL, NULL, '0', '100', NULL, NULL, NULL, 'frame_HyMenu_getMenuTreeOfOrg.htm', NULL, NULL, NULL, 'url', NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-orgn-manager-reportTreeAuthing-query', '授权报表树', NULL, NULL, '0', '110', NULL, NULL, NULL, 'report_ReportConfigure_getReportTreeAuthing.htm', NULL, NULL, NULL, NULL, NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-organ-manager-saveOrgPrivilegeDefine', '保存机构批量方案授权', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'freequery_FreeQuery_saveOrgPrivilegeDefine.htm', NULL, NULL, NULL, 'url', NULL, 'system-orgn-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-ds-manager', '数据源管理', NULL, NULL, '0', '80', NULL, '093.gif', NULL, 'frame_HyDataSource.htm', NULL, NULL, NULL, NULL, NULL, 'system-system-manager', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-ds-manager-query', '查询数据源', NULL, NULL, '0', '10', NULL, NULL, NULL, 'frame_HyDataSource_queryDataSource.htm', NULL, NULL, NULL, NULL, NULL, 'system-ds-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-ds-manager-delete', '删除数据源', NULL, NULL, '0', '20', NULL, NULL, NULL, 'frame_HyDataSource_deleteDataSource.htm', NULL, NULL, NULL, NULL, NULL, 'system-ds-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-ds-manager-add', '新增数据源', NULL, NULL, '0', '30', NULL, NULL, NULL, 'frame_HyDataSource_addDataSource.htm', NULL, NULL, NULL, NULL, NULL, 'system-ds-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-ds-manager-update', '修改数据源', NULL, NULL, '0', '40', NULL, NULL, NULL, 'frame_HyDataSource_updateDataSource.htm', NULL, NULL, NULL, NULL, NULL, 'system-ds-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-ds-manager-updateUser', '修改用户密码', NULL, NULL, '0', '50', NULL, NULL, NULL, 'frame_HyDataSource_updateDataSourceUser.htm', NULL, NULL, NULL, NULL, NULL, 'system-ds-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-ds-manager-test', '测试数据源连接', NULL, NULL, '0', '60', NULL, NULL, NULL, 'frame_HyDataSource_testConnection.htm', NULL, NULL, NULL, NULL, NULL, 'system-ds-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-report-manager-auth-access', '保存机构互访权限', NULL, NULL, '0', '10', NULL, NULL, NULL, 'frame_HyOrgPrivilege_saveAccessOrgPrivilege.htm', NULL, NULL, NULL, 'url', NULL, 'system-organ-access-config', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-report-manager-auth-tree', '加载机构树', NULL, NULL, '0', '20', NULL, NULL, NULL, 'frame_HyOrgPrivilege_getOrgTree.htm', NULL, NULL, NULL, NULL, NULL, 'system-organ-access-config', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-report-manager-organ-auth', '生成机构互访权限树', NULL, NULL, '0', '30', NULL, NULL, NULL, 'frame_HyOrgPrivilege_getAccessOrgTreeAuthing.htm', NULL, NULL, NULL, 'url', NULL, 'system-organ-access-config', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-param-manager', '系统参数', NULL, NULL, '0', '190', NULL, '276.gif', NULL, 'frame_HyParam_mainPage.htm', NULL, NULL, NULL, NULL, NULL, 'system-system-manager', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-param-manager-query', '查询参数', NULL, NULL, '0', '10', NULL, NULL, NULL, 'frame_HyParam_queryParam.htm', NULL, NULL, NULL, NULL, NULL, 'system-param-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-param-manager-add', '新增参数', NULL, NULL, '0', '20', NULL, NULL, NULL, 'frame_HyParam_addParam.htm', NULL, NULL, NULL, NULL, NULL, 'system-param-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-param-manager-edit', '修改参数', NULL, NULL, '0', '30', NULL, NULL, NULL, 'frame_HyParam_updateParam.htm', NULL, NULL, NULL, NULL, NULL, 'system-param-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-param-manager-delete', '删除参数', NULL, NULL, '0', '40', NULL, NULL, NULL, 'frame_HyParam_deleteParam.htm', NULL, NULL, NULL, NULL, NULL, 'system-param-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-param-manager-item-query', '查询参数明细', NULL, NULL, '0', '50', NULL, NULL, NULL, 'frame_HyParam_queryParamItem.htm', NULL, NULL, NULL, NULL, NULL, 'system-param-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-param-manager-item-save', '保存参数明细', NULL, NULL, '0', '60', NULL, NULL, NULL, 'frame_HyParam_saveParamItem.htm', NULL, NULL, NULL, NULL, NULL, 'system-param-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-third-system-manager-add', '添加系统', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metaapp_ThirdSystemsManage_add.htm', NULL, NULL, NULL, 'url', NULL, 'system-third-system-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-third-system-manager-edit', '编辑', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metaapp_ThirdSystemsManage_edit.htm', NULL, NULL, NULL, 'url', NULL, 'system-third-system-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-third-system-manager-delete', '删除', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metaapp_ThirdSystemsManage_delete.htm', NULL, NULL, NULL, 'url', NULL, 'system-third-system-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-log-manager-login-query', '登录日志查询', NULL, NULL, '0', '10', NULL, NULL, NULL, 'frame_LogQuery_queryLoginLog.htm', NULL, NULL, NULL, NULL, NULL, 'system-log-manager-query', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-log-manager-login-my-query', '我的登录日志查询', NULL, NULL, '0', '20', NULL, NULL, NULL, 'frame_LogQuery_queryMyLoginLog.htm', NULL, NULL, NULL, NULL, NULL, 'system-log-manager-my-open', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-log-manager-operator-query', '操作日志查询', NULL, NULL, '0', '10', NULL, NULL, NULL, 'frame_LogQuery_queryOperationLog.htm', NULL, NULL, NULL, NULL, NULL, 'system-log-manager-operator-open', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-log-manager-operator-my-query', '我的操作日志查询', NULL, NULL, '0', '20', NULL, NULL, NULL, 'frame_LogQuery_queryMyOperationLog.htm', NULL, NULL, NULL, NULL, NULL, 'system-log-manager-operator-my-open', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-log-manager-loginAnalysis-draw', '登录统计图', NULL, NULL, '0', '1', NULL, NULL, NULL, 'frame_LoginAnalysis_draw.htm', NULL, NULL, NULL, NULL, NULL, 'system-log-manager-login-analyse', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-log-manager-loginAnalysis-orgTree-load', '加载机构树', NULL, NULL, '0', '20', NULL, NULL, NULL, 'frame_LoginAnalysis_orgTree.htm', NULL, NULL, NULL, NULL, NULL, 'system-log-manager-login-analyse', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-log-manager-loginAnalysis-userGrid-load', '人员列表', NULL, NULL, '0', '30', NULL, NULL, NULL, 'frame_LoginAnalysis_userGrid.htm', NULL, NULL, NULL, NULL, NULL, 'system-log-manager-login-analyse', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-log-manager-loginAnalysis-open', '弹出窗口', NULL, NULL, '0', '41', NULL, NULL, NULL, 'frame_LoginAnalysis_openwin.htm', NULL, NULL, NULL, NULL, NULL, 'system-log-manager-login-analyse', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('thd-system-operate-query-method', '第三方系统接口操作日志查询', NULL, NULL, NULL, '100', NULL, 'menuItem.gif', NULL, 'metaapp_ThdSystemLog_queryThdSystemLog.htm', NULL, NULL, NULL, 'url', NULL, 'thd-system-operate-query', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('thd-Audit-Aatalist-query', '第三方系统查询数据列表（数据审计）', NULL, NULL, NULL, '100', NULL, 'menuItem.gif', NULL, 'metaapp_ThdAuditAatalist_queryThdAuditAatalist.htm', NULL, NULL, NULL, 'url', NULL, 'thd-Audit-Aatalist-open', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_SUBSCRIBE:2', '打开新增/修改订阅配置', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metaapp_AlterationSubscribe_openAlterationConf.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ALTERATION_SUBSCRIBE', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_SUBSCRIBE:1', '保存订阅信息，包括订阅信息，订阅内容信息，订阅人信息', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metaapp_AlterationSubscribe_saveAllSubscribe.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ALTERATION_SUBSCRIBE', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_ALTERATION_SUBSCRIBE:3', '删除变更订阅', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metaapp_AlterationSubscribe_deleteAlterationConf.htm', NULL, NULL, NULL, 'url', NULL, 'MM_ALTERATION_SUBSCRIBE', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MD-STM-TAB-RELA-3', '系统与表访问关系-删除', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metadata_ApStmRela_deleteApStmRelar.htm', NULL, NULL, NULL, 'url', NULL, 'MD-STM-TAB-RELA', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MD-STM-TAB-RELA-2', '系统与表访问关系-修改', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metadata_ApStmRela_updateApStmRelar.htm', NULL, NULL, NULL, 'url', NULL, 'MD-STM-TAB-RELA', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MD-STM-TAB-RELA-1', '系统与表访问关系-新增', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'metadata_ApStmRela_addApStmRelar.htm', NULL, NULL, NULL, 'url', NULL, 'MD-STM-TAB-RELA', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MD-STM-TAB-RELA-4', '系统与表访问关系-导入', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'metadata_ApStmRela_importStmTabRela.htm', NULL, NULL, NULL, 'url', NULL, 'MD-STM-TAB-RELA', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MD-STM-TAB-RELA-5', '系统与表访问关系-导出模板', NULL, NULL, NULL, '150', NULL, NULL, NULL, 'metadata_ApStmRela_exportTemplet.htm', NULL, NULL, NULL, 'url', NULL, 'MD-STM-TAB-RELA', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-getApStmTree', '查询系统信息', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_getApStmTree.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-updateApStm', ' 更新系统信息', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_updateApStm.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-addApStm', '新增系统信息', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_addApStm.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-getTApStm', '获取系统信息', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_getTApStm.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-deleteApStm', '删除系统信息', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_deleteApStm.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-addApStmLvl', '增加系统层次', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_addApStmLvl.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-getTApStmLvl', '获取系统层次信息', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_getTApStmLvl.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-updateApStmLvl', '更新系统层次', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_updateApStmLvl.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-info-manage-deleteApStmLvl', '删除系统层次', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_ApStm_deleteApStmLvl.htm', NULL, NULL, NULL, 'url', NULL, 'system-info-manage', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-home', '元数据对比首页', NULL, NULL, NULL, '220', NULL, '072.gif', NULL, 'metadata_MetaDataAnalyse_getMetadataAnalyse.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms_DqCompareData_home', '数据对比', NULL, NULL, NULL, '80', NULL, '388.gif', NULL, 'dqms_DqCompareData_home.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_PLATFORM', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms_DqCompareDataResult_home', '数据对比结果', NULL, NULL, NULL, '90', NULL, '331.gif', NULL, 'dqms_DqCompareDataResult_home.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_PLATFORM', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms_DqCompareData_updateDqCompareData', '更新对比', NULL, NULL, NULL, '100', NULL, '113.gif', NULL, 'dqms_DqCompareData_updateDqCompareData.htm', NULL, NULL, NULL, 'url', NULL, 'DQMS_PLATFORM', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('ts_manager', '任务管理', NULL, NULL, NULL, '210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'dsms', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dq_testtask', '测试任务', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'dqms_DqTestTask_pageList.htm', NULL, NULL, NULL, 'url', NULL, 'ts_manager', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('add_task', '新建任务', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'dqms_DqTestTask_saveTask.htm', NULL, NULL, NULL, 'url', NULL, 'ts_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('mdf_task', '修改任务', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'dqms_DqTestTask_updateTask.htm', NULL, NULL, NULL, 'url', NULL, 'ts_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms_new_task', '新建任务表单页面', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'dqms_DqTestTask_newTask.htm', NULL, NULL, NULL, 'url', NULL, 'ts_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('mine_task', '我的任务', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'dqms_DqTestTask_myTaskList.htm', NULL, NULL, NULL, 'url', NULL, 'ts_manager', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('cases_manage', '用例管理', NULL, NULL, NULL, '220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'dsms', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('case_list', '用例列表', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'dqms_DqCases_caseshome.htm', NULL, NULL, NULL, 'url', NULL, 'cases_manage', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('problem_manage', '缺陷管理', NULL, NULL, NULL, '230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'dsms', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('add_case', '新增用例', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'dqms_DqCases_addDqCases.htm', NULL, NULL, NULL, 'url', NULL, 'case_list', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('DqCases_updateDqCases', '用例修改', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'dqms_DqCases_updateDqCases.htm', NULL, NULL, NULL, 'url', NULL, 'case_list', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dqms_DqCases_deleteDqCases', '删除用例', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'dqms_DqCases_deleteDqCases.htm', NULL, NULL, NULL, 'url', NULL, 'case_list', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('chnWord-update', '更新中文词根', NULL, NULL, NULL, '150', NULL, NULL, NULL, 'metadata_ChnWordList_updateChnWord.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('stdResult-templet-export', '导出模型标准化模板', NULL, NULL, NULL, '160', NULL, NULL, NULL, 'metadata_StdResultList_exportTemplet.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('stdResult-export', '导出模型标准化结果', NULL, NULL, NULL, '170', NULL, NULL, NULL, 'metadata_StdResultList_exportStdResult.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('stdResult-import', '导入待标准化模型', NULL, NULL, NULL, '180', NULL, NULL, NULL, 'metadata_StdResultList_importStdResult.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('stdResult-add', '新增模型标准化结果', NULL, NULL, NULL, '190', NULL, NULL, NULL, 'metadata_StdResultList_addStdResult.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('stdResult-delete', '删除模型标准化结果', NULL, NULL, NULL, '200', NULL, NULL, NULL, 'metadata_StdResultList_deleteStdResult.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('enWord-templet-export', '导出英文词根模板', NULL, NULL, NULL, '210', NULL, NULL, NULL, 'metadata_EnWordList_exportTemplet.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('enWord-export', '导出英文词根列表', NULL, NULL, NULL, '220', NULL, NULL, NULL, 'metadata_EnWordList_exportEnWordList.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('enWord-import', '导入英文词根列表', NULL, NULL, NULL, '230', NULL, NULL, NULL, 'metadata_EnWordList_importEnWord.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('chnWord-templet-export', '导出中文词根模板', NULL, NULL, NULL, '240', NULL, NULL, NULL, 'metadata_ChnWordList_exportTemplet.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('chnWord-export', '导出中文词根列表', NULL, NULL, NULL, '250', NULL, NULL, NULL, 'metadata_ChnWordList_exportChnWordList.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('chnWord-import', '导入中文词根列表', NULL, NULL, NULL, '260', NULL, NULL, NULL, 'metadata_ChnWordList_importChnWord.htm', NULL, NULL, NULL, NULL, NULL, 'std-Designer', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('req_attach_file', '附件上传', NULL, NULL, NULL, '180', NULL, NULL, NULL, 'xtms_AlterRequire_upload.htm', NULL, NULL, NULL, 'url', NULL, 'ds_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('req_file_down', '附件下载', NULL, NULL, NULL, '190', NULL, NULL, NULL, 'xtms_AlterRequire_downFile.htm', NULL, NULL, NULL, 'url', NULL, 'ds_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('req_synergy', '数据需求进度管理', NULL, NULL, NULL, '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'dsms', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('req_synergy_export', '导出报告', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'xtms_SynergyManagement_exportReports.htm', NULL, NULL, NULL, 'url', NULL, 'req_synergy', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('req_synergy_report', '生成报告', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'xtms_SynergyManagement_createReports.htm', NULL, NULL, NULL, 'url', NULL, 'req_synergy', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('req_over_check', '处理变更需求', NULL, NULL, NULL, '200', NULL, NULL, NULL, 'xtms_AlterRequire_overAlterReq.htm', NULL, NULL, NULL, 'url', NULL, 'ds_manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-role-manager-new', '角色管理（新）', NULL, NULL, NULL, '140', NULL, '/resource/images/menuico/bulk2.gif', NULL, 'frame_HyUser_newManageRole.htm', NULL, NULL, NULL, 'url', NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-loadMappingCount', '查询元数据总数，成功映射总数，为成功映射总数', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'metadata_MdCompMapping_loadMappingCount.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-loadMappingTree', '生成元数据映射结果树', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'metadata_MdCompMapping_loadMappingTree.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-getCompResult', '元数据对比获取对比结果', NULL, NULL, NULL, '150', NULL, NULL, NULL, 'metadata_MdCompMapping_getCompResult.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping', '元数据应用', NULL, NULL, NULL, '2154', NULL, NULL, NULL, 'metadata_MdCompMapping_firstPage.htm', NULL, 'tab', NULL, 'url', NULL, 'meta', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-addMapping', '新增对比映射', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_MdCompMapping_addMapping.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-deleteMapping', '删除对比映射', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metadata_MdCompMapping_deleteMapping.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-runMapping', '运行映射', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metadata_MdCompMapping_runMapping.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-loadQuoteStat', '统计标准执行引用的合法性图形', NULL, NULL, NULL, '170', NULL, NULL, NULL, 'metadata_MdCompMapping_loadQuoteStat.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-loadQuotedStat', '标准执行基准的使用率图形', NULL, NULL, NULL, '180', NULL, NULL, NULL, 'metadata_MdCompMapping_loadQuotedStat.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-loadNumStat', '标准执行数量统计图形', NULL, NULL, NULL, '190', NULL, NULL, NULL, 'metadata_MdCompMapping_loadNumStat.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-getCheckNumStat', '标准执行数量统计', NULL, NULL, NULL, '200', NULL, NULL, NULL, 'metadata_MdCompMapping_getCheckNumStat.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-getCheckResult', '标准执行检查结果', NULL, NULL, NULL, '210', NULL, NULL, NULL, 'metadata_MdCompMapping_getCheckResult.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata-MdCompMapping-queryCompDetail', '元数据对比明细', NULL, NULL, NULL, '160', NULL, NULL, NULL, 'metadata_MdCompMapping_queryCompDetail.htm', NULL, NULL, NULL, 'url', NULL, 'metadata-MdCompMapping', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_TableAnalyse_loadCharts.htm', '加载图表', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metadata_TableAnalyse_loadCharts.htm', NULL, NULL, NULL, 'url', NULL, 'table-analyse', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_TableAnalyse_loadList.htm', '加载数据', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_TableAnalyse_loadList.htm', NULL, NULL, NULL, 'url', NULL, 'table-analyse', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-param-manager-new', '系统参数（新）', NULL, NULL, NULL, '80', NULL, NULL, NULL, 'frame_HyParam_mainPageNew.htm', NULL, NULL, NULL, 'url', NULL, 'system-param-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('frame-Login-oldPortal', '配置管理（系统旧版）', NULL, NULL, NULL, '255', NULL, NULL, NULL, 'frame_Login_oldPortal.htm', NULL, 'Tab', 'tree', NULL, NULL, 'system-system-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('frame-HyDictCode-previewSqlQuery', '预览数据字典', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'frame_HyDictCode_previewSqlQuery.htm', NULL, 'tab', NULL, 'url', NULL, 'system-dict-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_VERSION_MGR-2-del', '版本删除', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_Version_deleteRelease.htm', NULL, NULL, NULL, 'url', NULL, 'MM_VERSION_MGR-2', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dast-view', '数据标准视图', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_MetadataDisplay_showStdData.htm', NULL, NULL, NULL, NULL, NULL, 'dast', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dast-manager', '数据标准管理', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metadata_MetadataDisplay_versionHome.htm', NULL, NULL, NULL, NULL, NULL, 'dast', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-user-manager-saveSysImmunitryGroup', '保存超级管理员信息', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'frame_HyUser_saveSysImmunitryGroup.htm', NULL, NULL, NULL, 'url', NULL, 'system-user-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dast-new-child', '新建子标准', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metadata_MetadataDisplay_newMetadata.htm', NULL, NULL, NULL, NULL, NULL, 'dast-view', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_ScriptManager_downDir', '文件夹下载', NULL, NULL, NULL, '2284', NULL, NULL, NULL, 'metadata_ScriptManager_downDir.htm', NULL, NULL, NULL, NULL, NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_ScriptManager_upload', '文件上传', NULL, NULL, NULL, '2254', NULL, NULL, NULL, 'metadata_ScriptManager_upload.htm', NULL, NULL, NULL, NULL, NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_ScriptManager_downFile', '下载', NULL, NULL, NULL, '2274', NULL, NULL, NULL, 'metadata_ScriptManager_downFile.htm', NULL, NULL, NULL, NULL, NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('sys_roleResource_metaModelAuth', '元模型权限查询', NULL, NULL, NULL, '250', NULL, '357.gif', NULL, 'metaapp_RoleResource_newQueryMetamodelAuth.htm', NULL, NULL, NULL, NULL, NULL, 'system-role-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_ControlM_infomJob', 'infomJob', NULL, NULL, NULL, '2294', NULL, NULL, NULL, 'metadata_ControlM_infomJob.htm', NULL, NULL, NULL, NULL, NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_ControlM_dbJob', 'dbJob', NULL, NULL, NULL, '2304', NULL, NULL, NULL, 'metadata_ControlM_dbJob.htm', NULL, NULL, NULL, NULL, NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_ControlM_osJob', 'osJob', NULL, NULL, NULL, '2314', NULL, NULL, NULL, 'metadata_ControlM_osJob.htm', NULL, NULL, NULL, NULL, NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_ControlM_hadoopJob', 'hadoopJob', NULL, NULL, NULL, '2324', NULL, NULL, NULL, 'metadata_ControlM_hadoopJob.htm', NULL, NULL, NULL, NULL, NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('xtms_FileManager_createFolder', 'xtms_FileManager_createFolder', NULL, NULL, NULL, '150', NULL, NULL, NULL, 'xtms_FileManager_createFolder.htm', NULL, NULL, NULL, NULL, NULL, 'dsms', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('xtms_AlterRequire_preloadTable', 'xtms_AlterRequire_preloadTable', NULL, NULL, NULL, '160', NULL, NULL, NULL, 'xtms_AlterRequire_preloadTable.htm', NULL, NULL, NULL, 'url', NULL, 'dsms', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_TPvr_updateTPvr', '更新供应商', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metadata_TPvr_updateTPvr.htm', NULL, NULL, NULL, 'url', NULL, 'sys-ipvr-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('metadata_TPvr_deleteTPvr', '删除供应商', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metadata_TPvr_deleteTPvr.htm', NULL, NULL, NULL, 'url', NULL, 'sys-ipvr-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('frame_HyDictCode_save', '新建字典', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'frame_HyDictCode_save.htm', NULL, NULL, NULL, 'url', NULL, 'HyDictCode', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('frame_HyDictCode_delete', '字典删除', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'frame_HyDictCode_delete.htm', NULL, NULL, NULL, 'url', NULL, 'HyDictCode', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('dast', '数据标准', NULL, NULL, NULL, '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, NULL, 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('0022', 'FOLDER', NULL, NULL, NULL, '2214', NULL, NULL, NULL, 'metadata_ControlM_folder.htm', NULL, NULL, NULL, NULL, NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_FileManager', '采集文档管理', NULL, NULL, NULL, '40', NULL, '210.gif', NULL, 'metaextract_ExtractManual_forwardFileManagePage.htm', NULL, NULL, NULL, 'url', NULL, 'MM_EXTRACT', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT_MAN-DB', '上传文件', NULL, NULL, NULL, '120', NULL, '132.gif', NULL, 'metaextract_ExtractManual_uploadForDatabase.htm', NULL, NULL, NULL, 'url', NULL, 'MM_EXTRACT_MAN', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT_MAN-DELETE', '删除文件', NULL, NULL, NULL, '130', NULL, '118.gif', NULL, 'metaextract_ExtractManual_deleteServerFiles.htm', NULL, NULL, NULL, 'url', NULL, 'MM_EXTRACT_MAN', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('FM_download_files', '下载采集文档', NULL, NULL, NULL, '100', NULL, '170.gif', NULL, 'metaextract_ExtractManual_downloadFile.htm', NULL, NULL, NULL, 'url', NULL, 'MM_FileManager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('xtms_FileManager_downFile', '下载文件', NULL, NULL, NULL, '200', NULL, NULL, NULL, 'xtms_FileManager_downFile.htm', NULL, NULL, NULL, 'url', NULL, 'dsms', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('xtms_FileManager_upload', 'xtms_FileManager_upload', NULL, NULL, NULL, '190', NULL, '/resource/images/menuico/132.gif', NULL, 'xtms_FileManager_upload.htm', NULL, NULL, NULL, NULL, NULL, 'dsms', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT_MAN-delete-upload', '删除上传文件', NULL, NULL, NULL, '150', NULL, '118.gif', NULL, 'metaextract_ExtractManual_delteUploadedFile.htm', NULL, NULL, NULL, 'url', NULL, 'MM_EXTRACT_MAN', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_VERSION_SUMMARIZE', '统计差异', NULL, NULL, NULL, '3', NULL, NULL, NULL, 'metadata_VersionCompare_summarizeVersions.htm', NULL, NULL, NULL, 'url', NULL, 'MM_VERSION_RELEASE', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_VERSION_COMPARETREE', '树形差异', NULL, NULL, NULL, '4', NULL, NULL, NULL, 'metadata_VersionTree_metadataCompareTree.htm', NULL, NULL, NULL, 'url', NULL, 'MM_VERSION_RELEASE', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_VERSION_RELEASE-1', '发布版本', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metadata_Version_batchReleaseVersion.htm', NULL, NULL, NULL, 'url', NULL, 'MM_VERSION_RELEASE', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW', '用户视图', NULL, NULL, NULL, '6', NULL, 'resource/images/icons/folder_app.gif', NULL, 'metaapp_UserView_openUserView.htm', NULL, NULL, NULL, 'url', NULL, 'MM_MANAGE', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:1', '查询', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'metaapp_UserView_queryUserView.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:3', '新增用户视图', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaapp_UserView_addUserView.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:2', '新增用户视图文件夹', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaapp_UserView_addUserViewFolder.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:4', '新增用户视图元数据', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'metaapp_UserView_addUserViewMetadata.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:5', '更新视图', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'metaapp_UserView_updateView.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:6', '更新视图文件夹', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'metaapp_UserView_updateViewFolder.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:7', '重命名用户视图', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'metaapp_UserView_renameUserView.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:8', '重命名用户视图文件夹', NULL, NULL, NULL, '80', NULL, NULL, NULL, 'metaapp_UserView_renameUserViewFolder.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:9', '重命名用户视图或文件夹下的元模型', NULL, NULL, NULL, '90', NULL, NULL, NULL, 'metaapp_UserView_renameViewClassifier.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:10', '交换视图的显示顺序', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metaapp_UserView_swapUserViewOrder.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_BIZ_USERVIEW:11', '交换视图文件夹的显示顺序', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metaapp_UserView_swapUserViewFolderOrder.htm', NULL, NULL, NULL, NULL, NULL, 'MM_BIZ_USERVIEW', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_EXTRACT_MAN-SELECT', '选择服务器文件', NULL, NULL, NULL, '140', NULL, '307.gif', NULL, 'metaextract_ExtractManual_gatherServerFiles.htm', NULL, NULL, NULL, 'url', NULL, 'MM_EXTRACT_MAN', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:12', '删除元模型', NULL, NULL, NULL, '40', NULL, NULL, NULL, 'metamodel_Classifier_deleteClassifiers.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:13', '删除元模型风险报告', NULL, NULL, NULL, '45', NULL, NULL, NULL, 'metamodel_ClassifierRisk_reportRisk.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:21', '新增元模型属性', NULL, NULL, NULL, '50', NULL, NULL, NULL, 'metamodel_Classifier_addAttribute.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:22', '修改元模型属性', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'metamodel_Classifier_updateAttribute.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:23', '删除元模型属性', NULL, NULL, NULL, '70', NULL, NULL, NULL, 'metamodel_Classifier_deleteAttributes.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:24', '调整元模型属性顺序', NULL, NULL, NULL, '75', NULL, NULL, NULL, 'metamodel_Classifier_changeAttributeOrder.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:31', '新增元模型组合关系', NULL, NULL, NULL, '80', NULL, NULL, NULL, 'metamodel_Classifier_addCompRelation.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:32', '修改元模型组合关系', NULL, NULL, NULL, '90', NULL, NULL, NULL, 'metamodel_Classifier_updateCompRelation.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:33', '删除元模型组合关系', NULL, NULL, NULL, '100', NULL, NULL, NULL, 'metamodel_Classifier_deleteCompRelations.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:41', '新增元模型依赖关系', NULL, NULL, NULL, '110', NULL, NULL, NULL, 'metamodel_Classifier_addDepRelation.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:42', '删除元模型依赖关系', NULL, NULL, NULL, '120', NULL, NULL, NULL, 'metamodel_Classifier_deleteDepRelations.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:51', '新增元模型继承关系(父类)', NULL, NULL, NULL, '130', NULL, NULL, NULL, 'metamodel_Classifier_addSupCls.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:52', '删除元模型继承关系(父类)', NULL, NULL, NULL, '140', NULL, NULL, NULL, 'metamodel_Classifier_deleteSupClss.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:53', '新增元模型继承关系(子类)', NULL, NULL, NULL, '145', NULL, NULL, NULL, 'metamodel_Classifier_addSubCls.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:54', '删除元模型继承关系(子类)', NULL, NULL, NULL, '146', NULL, NULL, NULL, 'metamodel_Classifier_deleteSubClss.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:61', '新增元模型功能', NULL, NULL, NULL, '150', NULL, NULL, NULL, 'metamodel_Classifier_addClsFunc.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:62', '修改元模型功能', NULL, NULL, NULL, '160', NULL, NULL, NULL, 'metamodel_Classifier_updateClsFunc.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:63', '删除元模型功能', NULL, NULL, NULL, '170', NULL, NULL, NULL, 'metamodel_Classifier_deleteClsFuncs.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:71', '新增子包', NULL, NULL, NULL, '180', NULL, NULL, NULL, 'metamodel_Package_addPackage.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:72', '修改子包', NULL, NULL, NULL, '190', NULL, NULL, NULL, 'metamodel_Package_updatePackage.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:73', '删除子包', NULL, NULL, NULL, '200', NULL, NULL, NULL, 'metamodel_Package_deletePackages.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:74', '删除包风险报告', NULL, NULL, NULL, '210', NULL, NULL, NULL, 'metamodel_PackRisk_reportRisk.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:81', '增加枚举类型', NULL, NULL, NULL, '220', NULL, NULL, NULL, 'metamodel_Enum_addEnumeration.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:82', '修改枚举类型', NULL, NULL, NULL, '230', NULL, NULL, NULL, 'metamodel_Enum_updateEnumeration.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:83', '删除枚举类型', NULL, NULL, NULL, '240', NULL, NULL, NULL, 'metamodel_Enum_deleteEnumerations.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:84', '保存枚举类型', NULL, NULL, NULL, '250', NULL, NULL, NULL, 'metamodel_Enum_saveEnumItem.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:91', '新增数据类型', NULL, NULL, NULL, '260', NULL, NULL, NULL, 'metamodel_Datatype_addDatatype.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:92', '修改数据类型', NULL, NULL, NULL, '270', NULL, NULL, NULL, 'metamodel_Datatype_updateDatatype.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_METAMODEL_MGR:93', '删除数据类型', NULL, NULL, NULL, '280', NULL, NULL, NULL, 'metamodel_Datatype_deleteDatatypes.htm', NULL, NULL, NULL, 'url', NULL, 'MM_METAMODEL_MGR', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATAMAP', '数据地图(用于权限控制)', NULL, NULL, NULL, '2114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'meta', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATAMAP:0', '保存位置', NULL, NULL, NULL, '10', NULL, NULL, NULL, 'services/datamap/savePos.htm', NULL, NULL, NULL, 'url', NULL, 'MM_DATAMAP', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATAMAP:1', '增加数据地图的系统之间的关系', NULL, NULL, NULL, '20', NULL, NULL, NULL, 'metaapp_DataMap_addSystemRelation.htm', NULL, NULL, NULL, NULL, NULL, 'MM_DATAMAP', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('MM_DATAMAP:2', '删除数据地图的系统之间的关系', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'metaapp_DataMap_deleteSystemRelation.htm', NULL, NULL, NULL, NULL, NULL, 'MM_DATAMAP', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('sys', '系统管理', NULL, NULL, NULL, '40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, NULL, 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-system-manager', '系统管理', NULL, NULL, NULL, '3010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'url', NULL, 'sys', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-menu-manager', '菜单管理', NULL, NULL, '0', '5', NULL, '276.gif', NULL, 'frame_HyMenu.htm', NULL, NULL, NULL, NULL, NULL, 'system-system-manager', 'menu');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-menu-manager-tree-load', '获取菜单树', NULL, NULL, '0', '10', NULL, NULL, NULL, 'frame_HyMenu_getMenuTree.htm', NULL, NULL, NULL, NULL, NULL, 'system-menu-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-menu-manager-save', '保存菜单', NULL, NULL, '0', '20', NULL, NULL, NULL, 'frame_HyMenu_save.htm', NULL, NULL, NULL, 'url', NULL, 'system-menu-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-menu-manager-update', '更新菜单', NULL, NULL, NULL, '30', NULL, NULL, NULL, 'frame_HyMenu_update.htm', NULL, NULL, 'tree', 'url', NULL, 'system-menu-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-menu-manager-delete', '删除菜单', NULL, NULL, '0', '40', NULL, NULL, NULL, 'frame_HyMenu_delete.htm', NULL, NULL, NULL, NULL, NULL, 'system-menu-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-menu-manager-menuItem-query', '查看菜单项', NULL, NULL, '0', '50', NULL, NULL, NULL, 'frame_HyMenu_queryMenuItem.htm', NULL, NULL, NULL, NULL, NULL, 'system-menu-manager', 'func');
INSERT INTO "HYDG16"."T_HY_MENU" VALUES ('system-menu-manager-menuItem-i18n-query', '菜单国际化查询', NULL, NULL, NULL, '60', NULL, NULL, NULL, 'frame_HyMenu_queryMenuI18n.htm', NULL, NULL, 'tree', 'url', NULL, 'system-menu-manager', 'func');

-- ----------------------------
-- Primary Key structure for table T_HY_MENU
-- ----------------------------
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "PK_HY_MENU" PRIMARY KEY ("MENU_CODE");

-- ----------------------------
-- Checks structure for table T_HY_MENU
-- ----------------------------
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0011009" CHECK ("MENU_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0011010" CHECK ("MENU_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0011011" CHECK ("RESOURCE_TYPE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0011790" CHECK ("MENU_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0011791" CHECK ("MENU_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0011792" CHECK ("RESOURCE_TYPE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0012827" CHECK ("MENU_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0012828" CHECK ("MENU_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0012829" CHECK ("RESOURCE_TYPE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0015037" CHECK ("MENU_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0015038" CHECK ("MENU_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0015039" CHECK ("RESOURCE_TYPE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0030390" CHECK ("MENU_CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0030391" CHECK ("MENU_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HYDG16"."T_HY_MENU" ADD CONSTRAINT "SYS_C0030392" CHECK ("RESOURCE_TYPE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
