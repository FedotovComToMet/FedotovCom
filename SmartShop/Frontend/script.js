document.addEventListener('DOMContentLoaded', () => {
    loadProducts();
    document.getElementById('orderForm').addEventListener('submit', submitOrder);
});

function loadProducts() {
    fetch('http://localhost:5098/api/products')
        .then(response => response.json())
        .then(data => {
            const container = document.getElementById('products');
            data.forEach(p => {
                const div = document.createElement('div');
                div.innerHTML = `<strong>${p.name}</strong> - $${p.price}<br>`;
                const btn = document.createElement('button');
                btn.textContent = 'Buy';
                btn.onclick = () => selectProduct(p);
                div.appendChild(btn);
                container.appendChild(div);
            });
        });
}

function selectProduct(product) {
    document.getElementById('productId').value = product.id;
    document.getElementById('selectedProduct').textContent = `Product: ${product.name}`;
}

function submitOrder(e) {
    e.preventDefault();
    const order = {
        customerName: document.getElementById('name').value,
        email: document.getElementById('email').value,
        productId: parseInt(document.getElementById('productId').value)
    };

    fetch('http://localhost:5098/api/orders', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(order)
    })
    .then(res => res.ok ? 'Order placed!' : 'Error')
    .then(msg => {
        document.getElementById('message').textContent = msg;
        document.getElementById('orderForm').reset();
    });
}
