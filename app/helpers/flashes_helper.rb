module FlashesHelper
  FLASH_CLASSES = { alert: "danger", notice: "success", warning: "warning" }.freeze

  def flash_class(key)
    FLASH_CLASSES.fetch key.to_syn, key
  end

  def user_facing_classes
    flash.to_hash.slice "alert", "notice", "warning"
  end
end