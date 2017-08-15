.class Lorg/telegram/ui/PaymentFormActivity$10;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$10;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$10;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    new-instance v2, Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    new-instance v0, Lorg/telegram/ui/PaymentFormActivity$10$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PaymentFormActivity$10$1;-><init>(Lorg/telegram/ui/PaymentFormActivity$10;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$10;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    move v0, v1

    goto :goto_0
.end method
