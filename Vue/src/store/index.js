import Vue from "vue";
import Vuex from "vuex";
import axios from "axios";

Vue.use(Vuex);

const SERVER_URL = process.env.VUE_APP_SERVER_URL;

export default new Vuex.Store({
  state: {
    accessToken: null,
    userid: "",
    name: "",
    number: "",
    address: "",
    roll : "",

  },
  getters: {
    getAccessToken(state) {
      return state.accessToken;
    },
    getUserid(state) {
      return state.userid;
    },
    getName(state) {
      return state.name;
    },
    getNumber(state) {
      return state.number;
    },
    getAddress(state) {
      return state.address;
    },
    getRoll(state) {
      return state.roll;
    }
  },
  mutations: {
    LOGIN(state, payload) {
      state.accessToken = payload["auth-token"];
      state.userid = payload["userid"];
      state.name = payload["name"];
      state.number = payload["number"];
      state.address = payload["address"];
      state.roll = payload["roll"];
    },
    LOGOUT(state) {
      state.accessToken = null;
      state.userid = "";
      state.name = "";
      state.number = "";
      state.address = "";
      state.roll = "";
    }
  },
  actions: {
    LOGIN(context, user) {
      return axios
        .post(`${SERVER_URL}/user/confirm/login`, user)
        .then((response) => {
          context.commit("LOGIN", response.data);
          if(`${response.data["auth-token"]}` == "undefined") reject();
          axios.defaults.headers.common["auth-token"] = `${response.data["auth-token"]}`;
          sessionStorage.setItem('auth-token', `${response.data["auth-token"]}`)
        })
        .catch(() => {
          reject();
        });
    },
    LOGOUT(context) {
      context.commit("LOGOUT");
      axios.defaults.headers.common["auth-token"] = undefined;
      sessionStorage.removeItem('auth-token');
    },
  },
  modules: {}
});
