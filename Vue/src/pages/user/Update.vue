<template>
  <card class="card" title="regist" sub-title="내 정보 수정페이지입니다.">
    <div class="row">
      <div class="col-md-5">
        <fg-input
          type="text"
          label="userid"
          :readonly="true"
          v-model="user.userid"
        >
        </fg-input>
      </div>
    </div>
    <div class="row">
      <div class="col-md-5">
        <fg-input
          type="text"
          label="name"
          placeholder="name"
          v-model="user.name"
        >
        </fg-input>
      </div>
    </div>
    <div class="row">
      <div class="col-md-5">
        <fg-input
          type="number"
          label="number"
          placeholder="number"
          v-model="user.number"
        >
        </fg-input>
      </div>
    </div>
    <div class="row">
      <div class="col-md-5">
        <fg-input
          type="text"
          label="address"
          placeholder="address"
          v-model="user.address"
        >
        </fg-input>
      </div>
    </div>
    <div class="row">
      <div class="col-md-5">
        <fg-input
          type="text"
          label="roll"
          :readonly="true"
          placeholder="roll"
          v-model="roll"
        >
        </fg-input>
      </div>
    </div>
    <div class="row">
      <div class="col-md-5">
        <b-button variant="primary" @click="update">수정완료</b-button>
      </div>
    </div>
  </card>
</template>

<script>
const SERVER_URL = process.env.VUE_APP_SERVER_URL;

export default {
  name: "update",
  data() {
    return {
      user: {
        userid: "",
        name: "",
        number: "",
        address: ""
      },
      roll: ""
    };
  },
  methods: {
    update: function() {
      let user = this.user;
      console.log(user);
      axios
        .put(`${SERVER_URL}user/edit`, user)
        .then(response => {
          // this.$router.replace("/user/profile");
          this.$store.dispatch("LOGOUT").then(() => {
            this.$router.replace("/login");
          });
        })
        .catch(({ message }) => {
          this.msg = message;
        });
    }
  },
  created() {
    axios
      .get(`${SERVER_URL}user/info`)
      .then(response => {
        this.user.userid = response.data.user.userid;
        this.user.name = response.data.user.name;
        this.user.number = response.data.user.number;
        this.user.address = response.data.user.address;
        if (this.user.roll == 100) this.roll = "관리자";
        else this.roll = "회원";
      })
      .catch(() => {
        this.$store.dispatch("LOGOUT").then(() => {
          this.$router.replace("/");
        });
      });
  }
};
</script>

<style></style>
