.class Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->onNextPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
