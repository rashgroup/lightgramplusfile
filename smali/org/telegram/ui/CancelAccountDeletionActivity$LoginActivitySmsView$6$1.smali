.class Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;
.super Ljava/lang/Object;
.source "CancelAccountDeletionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->time:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->time:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v1, v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->time:I
    invoke-static {v1}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v2, v2, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v2}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v2, v2, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v2}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v4, :cond_3

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v2, v2, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2200(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "CallText"

    const v4, 0x7f0800ec

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2300(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2300(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v1, v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->time:I
    invoke-static {v1}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v2, v2, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeout:I
    invoke-static {v2}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2400(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v7, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->setProgress(F)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v2, v2, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v2}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v2, v2, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2200(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "SmsText"

    const v4, 0x7f08050a

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2300(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2300(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/telegram/ui/CancelAccountDeletionActivity$ProgressView;->setProgress(F)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->destroyTimer()V
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2500(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v4, :cond_6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->waitingForEvent:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2702(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1800(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->resendCode()V
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1200(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2200(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "Calling"

    const v2, 0x7f0800ee

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->createCodeTimer()V
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2800(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v1, v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phone:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1300(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v1, v1, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2900(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1$1;-><init>(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;)V

    invoke-virtual {v1, v0, v2, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1100(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->waitingForEvent:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$2702(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1800(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V

    iget-object v0, p0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6$1;->this$2:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;

    iget-object v0, v0, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView$6;->this$1:Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->resendCode()V
    invoke-static {v0}, Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;->access$1200(Lorg/telegram/ui/CancelAccountDeletionActivity$LoginActivitySmsView;)V

    goto/16 :goto_1
.end method
