<template>
  <div id="app">
    <MevnHeader :categories="categories" :cartCount="cartCount" />
    <div class="container">
      <div class="row">
        <div class="col-lg-3 navigation">
          <router-link
            v-for="({ id, title }, key) in categories"
            :key="key"
            :to="`/category/${id}`"
            class="navigation-item"
          >
            {{ title }}
          </router-link>
        </div>
        <div class="col-lg-9 margin-s">
          <router-view />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapGetters, mapActions } from 'vuex'
export default {
  name: 'App',
  components: {
    MevnHeader: () => import('@/components/layouts/Header'),
  },
  mounted() {
    this.fetchCategories()
  },
  methods: {
    ...mapActions({
      fetchCategories: 'fetchCategories',
    }),
  },
  computed: {
    ...mapGetters({
      categories: 'categories',
      cartCount: 'cartCount',
    }),
  },
}
</script>

<style lang="scss">
body {
  padding-top: 56px;
}
.margin-s {
  margin-top: 20px;
}
.navigation {
  display: flex;
  flex-direction: column;
  border-right: 1px solid rgba(99, 99, 99, 0.18);
  height: 100vh;
  position: fixed;
}

.navigation-item {
  margin: 0 16px;
  color: gray;
  padding: 16px 0;
}

@media only screen and (max-width: 992px) {
  .navigation {
    display: none;
  }
}
</style>
