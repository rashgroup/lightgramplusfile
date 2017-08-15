.class final Lorg/telegram/ui/Animation/ObjectAnimator10$11;
.super Lorg/telegram/ui/Animation/IntProperty;
.source "ObjectAnimator10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Animation/ObjectAnimator10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Animation/IntProperty",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Animation/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p1}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Animation/ObjectAnimator10$11;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/view/View;I)V
    .locals 1

    invoke-static {p1}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Animation/View10;->setScrollX(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10$11;->setValue(Landroid/view/View;I)V

    return-void
.end method
