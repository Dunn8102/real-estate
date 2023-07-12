// Lấy phần tử HTML select và nút Search
const provinceSelect = document.getElementById("lunchBegins");
const statusSelect = document.getElementById("basic");
const searchButton = document.querySelector(".largesearch-btn");

// Đăng ký sự kiện click cho nút Search
searchButton.addEventListener('click', (event) => {
  // Lấy giá trị đã chọn từ menu thả xuống
  const selectedProvince = provinceSelect.value;
  const selectedStatus = statusSelect.value;

  // Lọc danh sách bất động sản dựa trên giá trị đã chọn
  const properties = document.querySelectorAll('.proerty-item');
  properties.forEach((property) => {
    const itemType = property.getAttribute('data-item-type');
    const itemLocation = property.getAttribute('data-item-location');
    if ((selectedProvince === 'Chọn tỉnh thành' || itemLocation === selectedProvince) &&
        (selectedStatus === 'Trạng thái' || itemType === selectedStatus)) {
      property.style.display = 'block';
    } else {
      property.style.display = 'none';
    }
  });
});