.class Lorg/telegram/ui/PaymentFormActivity$23;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->sendForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;

.field final synthetic val$req:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$23;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$23;->val$req:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$23$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PaymentFormActivity$23$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$23;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$23$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$23$2;-><init>(Lorg/telegram/ui/PaymentFormActivity$23;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
