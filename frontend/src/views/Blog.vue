<template>
  <div>
    <Flash />
    <p>Title: {{ blog.title }}</p>
    <p>Body: {{ blog.body }}</p>
    <router-link :to="{ name: 'edit-blog', params: { id: blog.id }}">edit</router-link> | <router-link to="/blogs">Back</router-link> <!-- 追加 -->
  </div>
</template>

<script>
import { mapState } from 'vuex' // ①
import Flash from '@/components/Flash.vue' // 追加

export default {
  components: { // 追加
    Flash
  },
  computed: {
    ...mapState(['blogs']), // ②
    blog() { // ③
      return this.blogs.find(blogId => blogId.id === this.$route.params.id) || {}
    }
  }
}
</script>
