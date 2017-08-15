.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$a;
.super Ljava/lang/Object;
.source "RadialSelectorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$a;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->invalidate()V

    return-void
.end method
