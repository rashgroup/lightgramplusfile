.class Lorg/telegram/ui/Components/PhotoPaintView$21;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;->showBrushSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoPaintView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/high16 v5, 0x42500000    # 52.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const v4, 0x7f020204

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->currentBrush:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->buttonForBrush(IIZ)Landroid/widget/FrameLayout;
    invoke-static {v3, v2, v4, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3000(Lorg/telegram/ui/Components/PhotoPaintView;IIZ)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2800(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const v4, 0x7f020200

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget v0, v0, Lorg/telegram/ui/Components/PhotoPaintView;->currentBrush:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->buttonForBrush(IIZ)Landroid/widget/FrameLayout;
    invoke-static {v3, v1, v4, v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3000(Lorg/telegram/ui/Components/PhotoPaintView;IIZ)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2800(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    const v3, 0x7f020202

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    iget v4, v4, Lorg/telegram/ui/Components/PhotoPaintView;->currentBrush:I

    if-ne v4, v7, :cond_2

    :goto_2
    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->buttonForBrush(IIZ)Landroid/widget/FrameLayout;
    invoke-static {v0, v7, v3, v1}, Lorg/telegram/ui/Components/PhotoPaintView;->access$3000(Lorg/telegram/ui/Components/PhotoPaintView;IIZ)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$21;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # getter for: Lorg/telegram/ui/Components/PhotoPaintView;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$2800(Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
