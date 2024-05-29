require 'rqrcode'

class QrCodeService
  def self.generate_qr_code(url)
    qrcode = RQRCode::QRCode.new(url)
    qrcode.as_png(size: 300)
  end
end
