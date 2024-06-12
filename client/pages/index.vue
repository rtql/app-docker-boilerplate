<template>
  <Welcome>
    <HelloFromBackend></HelloFromBackend>
  </Welcome>
</template>

<script>
import Welcome from '~/layouts/Welcome.vue';
import HelloFromBackend from '~/components/HelloFromBackend.vue';

export default {
  components: { Welcome, HelloFromBackend },

  setup() {
    useSeoMeta({
      title: 'Nuxt3 + Laravel',
    })
  },

  data () {
    return {
      testData: '',
      count: null,
      countText: '',
    };
  },


  methods: {
    fetchData () {
      fetch('http://localhost:81/api')
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok');
          }
          return response.json();
        })
        .then(data => {
          this.testData = data;
          this.count += 1;
          this.countText = 'times';
          // Добавьте код для обновления содержимого вашего div на основании полученных данных
        })
        .catch(error => {
          console.error('There was a problem with the fetch operation:', error);
          alert('Ошибка при получении данных:', error.message);
        });
    },
  },
};
</script>
