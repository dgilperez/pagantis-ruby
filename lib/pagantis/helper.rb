module Pagantis
  class Helper
    attr_reader :operation, :order_id, :auth_method, :amount, :currency, :description,
      :ok_url, :nok_url, :account_id, :signature

    def initialize(args = {})
      @operation    = args.fetch(:operation) { nil } # empty operation equals single charge
      @order_id     = args.fetch(:order_id)
      @amount       = args.fetch(:amount)
      @currency     = args.fetch(:currency) & %w(EUR USD GBP)
      @description  = args.fetch(:description) { nil }
      @ok_url       = args.fetch(:ok_url)
      @nok_url      = args.fetch(:nok_url)
      @account_id   = args.fetch(:account_id)

      if subscription?
        @plan_id    = args.fetch(:plan_id)
        @user_id    = args.fetch(:user_id)
      end
    end

    def subscription?
      @operation == "SUBSCRIPTION"
    end

    def auth_method
      "SHA1"
    end

    def signature
      str = @account_id + @order_id + @amount + @currency + @auth_method + @ok_url + @nok_url
      Digest::SHA1.hexdigest(str.join(''))
    end
  end
end
