## data-validate
> dododcdc

### 介绍
本项目主要应用与大数据分析的数据验证阶段(也可以适用于传统关系型数据库mysql等)，将表与表的元数据进行对比，表与表之间的数据对比，表结果的技术性校验，目前主该工具主要用于对于impala上的表校验

### 软件架构
springboot mysql mybatis-plus vue element-ui CDH集群

### 部署教程
> 请确保java和nodejs已经安装好并且都已经配置了环境变量

1. 将配置文件(resources/application.yml)中数据库的地址改为你自己的地址
![image](https://user-images.githubusercontent.com/57853678/114810777-60aab480-9ddf-11eb-86f8-76de1cc9eec0.png)

2. 在mysql执行初始化data-validate\data-check\src\main\resources\init-sql\init.sql
   
   * 修改init.sql中数据库的配置信息，改为你要校验的数据库地址
     
      ![image](https://cdn.jsdelivr.net/gh/dododcdc/rep-myimage@main/images/sss.71cqitkew4g0.png)
   * 执行init.sql
   
3. 启动后端服务
      * 将data-check 打成jar包
      * 执行java -jar `jar包路径`
4. 启动前端服务
      * 安装依赖  npm install 
      * 启动      npm run dev 
### 使用说明
   使用前先要添加数据源，即对应的jdbc连接，这样我们就可以对这些链接做数据校验了，数据校验主要分为三个方面，针对单个表的基础性技术性校验(null值等)，表与表之间的数据对比，表与表之间的元数据对比，对于单个表的技术性校验目前可以支持客户端配置
### 参与贡献
dododcdc 
