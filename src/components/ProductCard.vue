<template>
  <div class="product-card">
    <div
      class="product-card__image"
      :style="{
        backgroundImage: `url(${imageUrl})`,
      }"
    ></div>
    <div class="product-card__body">
      <span class="product-title">
        {{ title }}
      </span>
      <span class="product-price">{{ price }}$</span>
      <div class="product-card__actions">
        <button
          class="btn btn-info"
          @click="$emit('add-to-cart')"
          v-if="!inCart"
        >
          +
        </button>
        <button class="btn btn-danger" @click="$emit('add-to-cart')" v-else>
          X
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ProductCard',
  props: {
    title: {
      type: String,
      default: '',
    },
    price: {
      type: Number,
      default: 0,
    },
    imageUrl: {
      type: String,
      default: '',
    },
    inCart: {
      type: Boolean,
      default: false,
    },
    description: {
      type: String,
      default: '',
    },
  },
}
</script>

<style scoped>
.product-card {
  padding: 12px 12px 24px 12px;
  background: #f8faff;
  border-radius: 12px;
}
.product-card__image {
  border-radius: 12px;
  width: 100%;
  height: 120px;
  background-size: cover;
  background-position: 50% 50%;
}

.product-card__body {
  padding: 6px;
  margin-top: 16px;
  display: flex;
  flex-direction: column;
}

.product-card__actions {
  position: absolute;
  right: 24px;
  bottom: 8px;
}

.product-card__actions button {
  border-radius: 8px;
}

.product-title {
  font-weight: 600;
  font-size: 14px;
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
}

.product-price {
  color: #808082;
  font-size: 14px;
}
</style>
