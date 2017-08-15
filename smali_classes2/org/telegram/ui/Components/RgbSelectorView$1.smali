.class Lorg/telegram/ui/Components/RgbSelectorView$1;
.super Ljava/lang/Object;
.source "RgbSelectorView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RgbSelectorView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RgbSelectorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RgbSelectorView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RgbSelectorView$1;->this$0:Lorg/telegram/ui/Components/RgbSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView$1;->this$0:Lorg/telegram/ui/Components/RgbSelectorView;

    # invokes: Lorg/telegram/ui/Components/RgbSelectorView;->setPreviewImage()V
    invoke-static {v0}, Lorg/telegram/ui/Components/RgbSelectorView;->access$000(Lorg/telegram/ui/Components/RgbSelectorView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView$1;->this$0:Lorg/telegram/ui/Components/RgbSelectorView;

    # invokes: Lorg/telegram/ui/Components/RgbSelectorView;->onColorChanged()V
    invoke-static {v0}, Lorg/telegram/ui/Components/RgbSelectorView;->access$100(Lorg/telegram/ui/Components/RgbSelectorView;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
