.class Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PaymentFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelegramWebviewProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    return-void
.end method


# virtual methods
.method public postEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
