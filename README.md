# 🚇 CityFlow - Aplicación de Gestión del Metrobus Puebla

**CityFlow** es una aplicación móvil desarrollada en **Flutter** con arquitectura **MVVM** y un backend basado en **Node.js + Firebase**, diseñada para facilitar la administración de tarjetas de transporte, consulta de rutas y estaciones, recarga de saldo y gestión de notificaciones para usuarios del Metrobus de Puebla.

---

## 📌 Funcionalidades principales

- Recarga de saldo rápida y segura.
- Consulta de rutas y estaciones de las distintas líneas.
- Búsqueda de estaciones específicas o cercanas.
- Inicio de sesión y gestión de perfil de usuario.
- Historial de recargas y rutas favoritas.
- Notificaciones en tiempo real.
- Panel administrativo para gestión de estaciones, usuarios y reportes.

---

## 🏗 Arquitectura

La aplicación implementa una **arquitectura Cliente-Servidor**:

- **Frontend (Flutter)**: Interfaces de usuario intuitivas y multiplataforma.
- **Backend (Node.js + Express)**: API RESTful para autenticación, gestión de datos y operaciones.
- **Base de datos (Firebase)**: Almacenamiento de datos de usuarios, transacciones y rutas.
- **Geolocalización (Google Maps SDK)**: Mapa interactivo con rutas y estaciones.
- **Mensajería en tiempo real (Firebase Cloud Messaging)**: Notificaciones de recargas y alertas.

---

## 🚀 Tecnologías utilizadas
- **Frontend**: Flutter, Dart  
- **Backend**: Node.js, Express  
- **Base de datos**: Firebase Realtime Database  
- **Mapas y geolocalización**: Google Maps SDK  
- **Arquitectura**: MVVM  
- **Autenticación**: Firebase Authentication  
- **Notificaciones**: Firebase Cloud Messaging  

---

## 📂 Instalación y configuración
1. Clonar el repositorio:
   ```bash
   git clone https://github.com/HugoLavoe/cityflow.git
