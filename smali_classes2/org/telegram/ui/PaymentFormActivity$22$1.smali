.class Lorg/telegram/ui/PaymentFormActivity$22$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$22;->onSuccess(Lcom/stripe/android/model/Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$22;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$22;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$22$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$22$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$22;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$22;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$22$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$22;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$22;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$2400(Lorg/telegram/ui/PaymentFormActivity;Z)V

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$22$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$22;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$22;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    return-void
.end method
