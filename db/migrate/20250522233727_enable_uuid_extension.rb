class EnableUuidExtension < ActiveRecord::Migration[7.2]
  ## Conf / Configuracion uuid para los modelos / confiugra la bd para que use uuid
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
  end
end
