.class public Lorg/telegram/ui/Components/Switch$Insets;
.super Ljava/lang/Object;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Insets"
.end annotation


# static fields
.field public static final NONE:Lorg/telegram/ui/Components/Switch$Insets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    new-instance v0, Lorg/telegram/ui/Components/Switch$Insets;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v3, v2, v3}, Lorg/telegram/ui/Components/Switch$Insets;-><init>(IIII)V

    sput-object v0, Lorg/telegram/ui/Components/Switch$Insets;->NONE:Lorg/telegram/ui/Components/Switch$Insets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/Switch$Insets;->left:I

    iput p2, p0, Lorg/telegram/ui/Components/Switch$Insets;->top:I

    iput p3, p0, Lorg/telegram/ui/Components/Switch$Insets;->right:I

    iput p4, p0, Lorg/telegram/ui/Components/Switch$Insets;->bottom:I

    return-void
.end method
