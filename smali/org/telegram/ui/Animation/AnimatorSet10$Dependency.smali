.class Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;
.super Ljava/lang/Object;
.source "AnimatorSet10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Animation/AnimatorSet10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dependency"
.end annotation


# static fields
.field static final AFTER:I = 0x1

.field static final WITH:I


# instance fields
.field public node:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

.field public rule:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Animation/AnimatorSet10$Node;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->node:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iput p2, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->rule:I

    return-void
.end method
