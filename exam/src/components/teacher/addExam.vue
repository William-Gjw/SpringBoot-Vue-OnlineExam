<!-- 添加考试 -->
<template>
  <section class="add">
    <el-form ref="form" :model="form" label-width="80px">
      <el-form-item label="试卷名称">
        <el-input v-model="form.source" placeholder="请输入考试课程名称"></el-input>
      </el-form-item>
      <el-form-item label="介绍">
        <el-input v-model="form.description" placeholder="如：2021上期期末考试"></el-input>
      </el-form-item>
      <el-form-item label="学校">
        <el-input v-model="form.institute" placeholder="请输入学校名称"></el-input>
      </el-form-item>
      <el-form-item label="所属科目">
        <el-input v-model="form.major" placeholder="请输入科目名称"></el-input>
      </el-form-item>
      <el-form-item label="年级">
        <el-input v-model="form.grade" placeholder="如：2017级"></el-input>
      </el-form-item>
      <el-form-item label="考试日期">
        <el-col :span="11">
          <el-date-picker placeholder="选择日期" v-model="form.examDate" style="width: 100%;"></el-date-picker>
        </el-col>
      </el-form-item>
      <el-form-item label="持续时间（分钟）">
        <el-input v-model="form.totalTime" placeholder="如：120"></el-input>
      </el-form-item>
      <el-form-item label="总分">
        <el-input v-model="form.totalScore" placeholder="如：100"></el-input>
      </el-form-item>
      <el-form-item label="考试类型">
        <el-input v-model="form.type" placeholder="如：期末考试"></el-input>
      </el-form-item>
      <el-form-item label="考生提示">
        <el-input type="textarea" v-model="form.tips" placeholder="请填写考生注意事项"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="onSubmit()">立即创建</el-button>
        <el-button type="text" @click="cancel()">取消</el-button>
      </el-form-item>
    </el-form>
  </section>
</template>

<script>
export default {
  data() {
    return {
      form: { //表单数据初始化
        source: null,
        description: null,
        institute: null,
        major: null,
        grade: null,
        examDate: null,
        totalTime: null,
        totalScore: null,
        type: null,
        tips: null,
        paperId: null,
      }
    };
  },
  methods: {
    formatTime(date) { //日期格式化
      let year = date.getFullYear()
      let month= date.getMonth()+ 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
      let day=date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
      let hours=date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
      let minutes=date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
      let seconds=date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
      // 拼接
      return year+"-"+month+"-"+day+" "+hours+":"+minutes+":"+seconds;
    },
    onSubmit() {
      let examDate = this.formatTime(this.form.examDate)
      this.form.examDate = examDate.substr(0,10)
      this.$axios(`/api/examManagePaperId`).then(res => {
        this.form.paperId = res.data.data.paperId + 1 //实现paperId自增1
        this.$axios({
          url: '/api/exam',
          method: 'post',
          data: {
            ...this.form
          }
        }).then(res => {
          if(res.data.code === 200) {
            this.$message({
              message: '数据添加成功',
              type: 'success'
            })
            this.$router.push({path: '/selectExam'})
          }
        })
      })
    },
    cancel() { //取消按钮
      this.form = {}
    },
  }
};
</script>
<style lang="scss" scoped>
.add {
  padding: 0 60px;
  width: 500px;
}
</style>

