import { defineComponent, onMounted, ref } from "vue";

export default defineComponent({
  setup() {
    const el = ref();

    onMounted(() => {
      console.log(el.value);
    });

    return () => <div class="test-v" ref={el}>Hello World! </div>;
  },
});
