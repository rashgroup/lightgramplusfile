.class public Lorg/telegram/ui/PaymentFormActivity$LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "PaymentFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PaymentFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinkSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$LinkSpan;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$LinkSpan;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    new-instance v1, Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
