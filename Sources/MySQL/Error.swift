public enum MySQLError : Error {
    case invalidPacket
    case invalidHandshake
    case invalidResponse
    case unauthenticated
}
