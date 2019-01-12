<template>
  <section>
    <h1>Send Sentry Error</h1>
    <button @click="$sentry.captureException(new Error('Test Error for Sentry'))">
      Send Sentry Error
    </button>
  </section>
</template>

<script>
  export default {
    name: "makeError"
  }
</script>

<style scoped>

</style>
