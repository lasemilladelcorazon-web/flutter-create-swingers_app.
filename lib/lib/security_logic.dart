class SecurityLogic {
  // Esta función es la que bloquea las fotos si no hay pago o permiso
  static bool canViewPrivatePhotos(bool hasPaidMembership, bool hasKeyExchange) {
    if (hasPaidMembership && hasKeyExchange) {
      return true; // Solo si pagó los 19.99€ y tiene la llave
    }
    return false;
  }
}
