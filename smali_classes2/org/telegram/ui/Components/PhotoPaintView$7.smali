.class Lorg/telegram/ui/Components/PhotoPaintView$7;
.super Ljava/lang/Object;
.source "PhotoPaintView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoPaintView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
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

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoPaintView$7;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoPaintView$7;->this$0:Lorg/telegram/ui/Components/PhotoPaintView;

    # invokes: Lorg/telegram/ui/Components/PhotoPaintView;->openStickersView()V
    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->access$1200(Lorg/telegram/ui/Components/PhotoPaintView;)V

    return-void
.end method
