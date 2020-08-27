<template>
  <div class="container">
    <template v-if="cartItems">
      <ul class="list-group">
        <li class="list-group-item" v-for="(item, key) in cartItems" :key="key">
          {{ item.title }} - {{ item.price }}
        </li>
      </ul>
      <div class="panel">
        Quantity: {{ cartCount }} Total: {{ cartTotalPrice }}
      </div>
    </template>
    <template v-else>
      <img
        class="empty-image"
        src="https://images.pexels.com/photos/21067/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
      />
      <hr />
      Your cart is empty please add items to it
    </template>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
export default {
  name: 'Cart',
  computed: {
    ...mapGetters({
      cartItems: 'cartItems',
      cartTotalPrice: 'cartTotalPrice',
      cartCount: 'cartCount',
    }),
  },
};
</script>

<style scoped>
.empty-image {
  width: 400px;
}
</style>
