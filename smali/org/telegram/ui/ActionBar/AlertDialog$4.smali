.class Lorg/telegram/ui/ActionBar/AlertDialog$4;
.super Landroid/widget/FrameLayout;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$4;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    sub-int v5, p4, p2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingRight()I

    move-result v0

    sub-int v0, v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingRight()I

    move-result v6

    sub-int v6, v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingTop()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    move-object v0, v1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, -0x2

    if-ne v0, v6, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingRight()I

    move-result v0

    sub-int v0, v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v0, v6

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v0, v6

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v1, v0, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$4;->getPaddingTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v1, v0, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    return-void
.end method
