.class final Lorg/telegram/ui/Animation/ObjectAnimator10$4;
.super Lorg/telegram/ui/Animation/FloatProperty10;
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
        "Lorg/telegram/ui/Animation/FloatProperty10",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Animation/FloatProperty10;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 1

    invoke-static {p1}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/View10;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Animation/ObjectAnimator10$4;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 1

    invoke-static {p1}, Lorg/telegram/ui/Animation/View10;->wrap(Landroid/view/View;)Lorg/telegram/ui/Animation/View10;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Animation/View10;->setTranslationX(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10$4;->setValue(Landroid/view/View;F)V

    return-void
.end method
