.class final Lorg/telegram/ui/Components/AlertsCreator$4;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createColorSelectDialog(Landroid/app/Activity;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$linearLayout:Landroid/widget/LinearLayout;

.field final synthetic val$selectedColor:[I


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;[I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$4;->val$linearLayout:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$4;->val$selectedColor:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$4;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$4;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/RadioColorCell;

    if-ne v0, p1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setChecked(ZZ)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$4;->val$selectedColor:[I

    sget-object v2, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    aput v0, v1, v3

    return-void
.end method
