.class Lorg/telegram/ui/SecurityList$12;
.super Ljava/lang/Object;
.source "SecurityList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecurityList;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecurityList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecurityList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SecurityList$12;->this$0:Lorg/telegram/ui/SecurityList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/SecurityList$12;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/SecurityList;->access$2700(Lorg/telegram/ui/SecurityList;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/SecurityList$12;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->floatingHidden:Z
    invoke-static {v0}, Lorg/telegram/ui/SecurityList;->access$3500(Lorg/telegram/ui/SecurityList;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/SecurityList$12;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/SecurityList;->access$2700(Lorg/telegram/ui/SecurityList;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/SecurityList$12;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->floatingHidden:Z
    invoke-static {v0}, Lorg/telegram/ui/SecurityList;->access$3500(Lorg/telegram/ui/SecurityList;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/SecurityList$12;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/SecurityList;->access$2700(Lorg/telegram/ui/SecurityList;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SecurityList$12;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/SecurityList;->access$2700(Lorg/telegram/ui/SecurityList;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SecurityList$12;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/SecurityList;->access$2700(Lorg/telegram/ui/SecurityList;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_2
.end method
