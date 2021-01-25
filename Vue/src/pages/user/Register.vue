<template>
  <div class="col-md-12">
    <div class="card card-container">
      <img
        id="profile-img"
        src="//ssl.gstatic.com/accounts/ui/avatar_2x.png"
        class="profile-img-card"
      />
      <form name="form" @submit.prevent>
        <div v-if="!successful">
          <!-- userid; username; userpwd; email; address; -->

          <div class="form-group">
            <label for="userid">아이디</label>
            <input
              type="text"
              class="form-control"
              name="userid"
              v-model="user.userid"
            />
            <div class="alert-danger" v-if="submitted && errors.has('userid')">
              {{ errors.first("userid") }}
            </div>
          </div>
          <div class="form-group">
            <label for="pass">비밀번호</label>
            <input
              type="password"
              class="form-control"
              name="pass"
              v-model="user.pass"
            />
            <div class="alert-danger" v-if="submitted && errors.has('pass')">
              {{ errors.first("pass") }}
            </div>
          </div>
          <div class="form-group">
            <label for="name">이름</label>
            <input
              type="text"
              class="form-control"
              name="name"
              v-model="user.name"
            />
            <div class="alert-danger" v-if="submitted && errors.has('name')">
              {{ errors.first("name") }}
            </div>
          </div>
          <div class="form-group">
            <label for="number">전화번호</label>
            <input
              type="number"
              class="form-control"
              name="number"
              v-model="user.number"
            />
            <div class="alert-danger" v-if="submitted && errors.has('number')">
              {{ errors.first("number") }}
            </div>
          </div>
          <div class="form-group">
            <label for="address">주소</label>
            <input
              type="address"
              class="form-control"
              name="address"
              v-model="user.address"
            />
            <div class="alert-danger" v-if="submitted && errors.has('address')">
              {{ errors.first("address") }}
            </div>
          </div>
          <div class="form-group">
            <button class="btn btn-primary btn-block" @click="regist">
              Sign Up
            </button>
          </div>
        </div>
      </form>

      <div
        class="alert"
        :class="successful ? 'alert-success' : 'alert-danger'"
        v-if="message"
      >
        {{ message }}
      </div>
    </div>
  </div>
</template>

<script>
const SERVER_URL = process.env.VUE_APP_SERVER_URL;

export default {
  name: "register",
  data() {
    return {
      user: {
        userid: "",
        pass: "",
        name: "",
        number: "",
        address: ""
      },
      submitted: false,
      successful: false,
      message: ""
    };
  },
  // mounted() {
  //   if (this.loggedIn) {
  //     this.$router.push('/');
  //   }
  // },
  methods: {
    regist: function() {
      let user = this.user;
      axios
        .post(`${SERVER_URL}user/regist`, user)
        .then(response => {
          this.$router.push("/login");
        })
        .catch(({ message }) => {
          this.msg = message;
        });
    }
  }
};
</script>

<style scoped>
label {
  display: block;
  margin-top: 10px;
}

.card-container.card {
  max-width: 350px !important;
  padding: 40px 40px;
}

.card {
  background-color: #f7f7f7;
  padding: 20px 25px 30px;
  margin: 0 auto 25px;
  margin-top: 50px;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.profile-img-card {
  width: 96px;
  height: 96px;
  margin: 0 auto 10px;
  display: block;
  -moz-border-radius: 50%;
  -webkit-border-radius: 50%;
  border-radius: 50%;
}
</style>
