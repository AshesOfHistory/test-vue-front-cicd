<template>
  <div class="home">
    <ul>
      <li v-for="(user) in users" :key="user.id">
        id: {{user.id}}, name: {{user.name}}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'Home',
  data() {
    return {
      users: []
    }
  },
  mounted() {
    axios.get('http://localhost:3100/api/users').then(res => {
      this.users = res.data
    })
  }
}
</script>
<style scoped>
ul li {
  list-style: none;
}
</style>
