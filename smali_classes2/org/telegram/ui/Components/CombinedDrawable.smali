.class public Lorg/telegram/ui/Components/CombinedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CombinedDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private backHeight:I

.field private backWidth:I

.field private background:Landroid/graphics/drawable/Drawable;

.field private fullSize:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconHeight:I

.field private iconWidth:I

.field private left:I

.field private top:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->left:I

    iput p4, p0, Lorg/telegram/ui/Components/CombinedDrawable;->top:I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->fullSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconWidth:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->left:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->left:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CombinedDrawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2, p3, p4}, Lorg/telegram/ui/Components/CombinedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setCustomSize(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backWidth:I

    iput p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->backHeight:I

    return-void
.end method

.method public setFullsize(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->fullSize:Z

    return-void
.end method

.method public setIconSize(II)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconWidth:I

    iput p2, p0, Lorg/telegram/ui/Components/CombinedDrawable;->iconHeight:I

    return-void
.end method

.method public setState([I)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CombinedDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v0, 0x1

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/CombinedDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
