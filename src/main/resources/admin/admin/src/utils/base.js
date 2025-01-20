const base = {
    get() {
                return {
            url : "http://localhost:8080/springboot2o1bg/",
            name: "springboot2o1bg",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot2o1bg/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "在线BLOG网"
        } 
    }
}
export default base