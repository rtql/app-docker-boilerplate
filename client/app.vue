<template>
  <div>
    <div>{{ testData }}</div>
    <button @click='fetchData' type='button'>testest</button>
    <NuxtRouteAnnouncer />
    <NuxtWelcome />
  </div>
</template>

<script>
export default {
  data() {
    return { testData: '' }
  },
  methods: {
    fetchData() {
      fetch('http://localhost:81/api')
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok');
          }
          return response.json();
        })
        .then(data => {
          this.testData = data;
          // Добавьте код для обновления содержимого вашего div на основании полученных данных
        })
        .catch(error => {
          console.error('There was a problem with the fetch operation:', error);
          alert('Ошибка при получении данных:', error.message);
        });
    }
  }
}
</script>
