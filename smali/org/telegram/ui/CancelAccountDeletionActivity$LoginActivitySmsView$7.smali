.class Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;
.super Ljava/lang/Object;
.source "CancelAccountDeletionActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->onNextPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    iput-object p2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7$1;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$7;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
