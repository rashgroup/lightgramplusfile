.class Lorg/telegram/ui/PopupNotificationActivity$11;
.super Ljava/lang/Object;
.source "PopupNotificationActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$11;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$11;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$1300(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$11;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$1300(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$11;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$1300(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity$11;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lorg/telegram/ui/PopupNotificationActivity;->access$1300(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity$11;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lorg/telegram/ui/PopupNotificationActivity;->access$1300(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 v0, 0x1

    return v0
.end method
