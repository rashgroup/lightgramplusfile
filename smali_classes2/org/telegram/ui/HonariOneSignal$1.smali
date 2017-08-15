.class Lorg/telegram/ui/HonariOneSignal$1;
.super Ljava/lang/Object;
.source "HonariOneSignal.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/HonariOneSignal;->onNotificationProcessing(Lcom/onesignal/OSNotificationReceivedResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/HonariOneSignal;

.field final synthetic val$hidden:Ljava/lang/String;

.field final synthetic val$read:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/HonariOneSignal;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/HonariOneSignal$1;->this$0:Lorg/telegram/ui/HonariOneSignal;

    iput-object p2, p0, Lorg/telegram/ui/HonariOneSignal$1;->val$hidden:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/HonariOneSignal$1;->val$read:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/HonariOneSignal$1$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/HonariOneSignal$1$1;-><init>(Lorg/telegram/ui/HonariOneSignal$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
