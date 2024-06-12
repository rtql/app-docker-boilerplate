<template>
  <div>
    <div>{{ testData }} {{ count }}</div>
    <button @click='fetchData' type='button' class='bg-red-500 text-blue-500'>click for test</button>
    <NuxtRouteAnnouncer />
    <NuxtWelcome />
  </div>
</template>

<script>
export default {
  data() {
    return {
      testData: '',
      count: 0,
    }
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
          this.count += 1;
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
