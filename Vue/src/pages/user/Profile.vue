<template>
  <card class="card" title="Profile" sub-title="내 정보 확인페이지입니다.">
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
        <fg-input type="text" label="name" :readonly="true" v-model="user.name">
        </fg-input>
      </div>
    </div>
    <div class="row">
      <div class="col-md-5">
        <fg-input
          type="number"
          label="number"
          :readonly="true"
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
          :readonly="true"
          v-model="user.address"
        >
        </fg-input>
      </div>
    </div>
    <div class="row">
      <div class="col-md-5">
        <fg-input type="text" label="roll" :readonly="true" v-model="roll">
        </fg-input>
      </div>
    </div>
    <div class="row">
      <div class="col-md-5">
        <b-button variant="primary" @click="updateform">정보수정</b-button>
        <b-button variant="danger" @click="withdraw">회원탈퇴</b-button>
      </div>
    </div>
  </card>
</template>

<script>
import axios from "axios";

const SERVER_URL = process.env.VUE_APP_SERVER_URL;

export default {
  data() {
    return {
      user: {
        userid: "",
        name: "",
        number: "",
        adderss: ""
      },
      roll: ""
    };
  },
  methods: {
    withdraw: function() {
      axios
        .delete(`${SERVER_URL}user/withdraw`)
        .then(response => {
          console.log(response);
          this.$store.dispatch("LOGOUT").then(() => this.$router.replace("/"));
        })
        .catch(() => {
          console.log("err");
        });
    },
    updateform: function() {
      this.$router.push("/user/update");
    }
  },
  created() {
    axios
      .get(`${SERVER_URL}user/info`)
      .then(response => {
        this.user = response.data.user;
        if (this.user.roll == 100) this.roll = "관리자";
        else this.roll = "회원";
      })
      .catch(() => {
        this.$store.dispatch("LOGOUT").then(() => this.$router.replace("/"));
      });
  }
};
</script>

<style></style>
