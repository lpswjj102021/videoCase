

const state = {
  sys: ""
}

const mutations = {
  SET_SYS: (state, sys) => {
    state.sys = sys
  }
}

const actions = {
  addSys({ commit }, sys) {
    commit('SET_SYS', sys)
  }
}

export default {
  namespaced: true,
  state,
  mutations,
  actions
}
