.class Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->postEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

.field final synthetic val$eventData:Ljava/lang/String;

.field final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventName:Ljava/lang/String;

    const-string/jumbo v1, "payment_form_submit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "credentials"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v2, v2, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;
    invoke-static {v2, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->access$102(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;->val$eventData:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
