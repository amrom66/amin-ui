<template>
  <div>
    <svg-icon icon-class="heart" @click="goto" />
  </div>
</template>

<script>
export default {
  name: 'GoAdminDonate',
  data() {
    return {
      url: ''
    }
  },
  methods: {
    goto() {
      window.open(this.url)
    }
  }
}
</script>
