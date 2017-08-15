.class public Lorg/telegram/ui/Components/Paint/Swatch;
.super Ljava/lang/Object;
.source "Swatch.java"


# instance fields
.field public brushWeight:F

.field public color:I

.field public colorLocation:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    return-void
.end method
