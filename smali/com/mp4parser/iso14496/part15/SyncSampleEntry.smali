.class public Lcom/mp4parser/iso14496/part15/SyncSampleEntry;
.super Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
.source "SyncSampleEntry.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "sync"


# instance fields
.field nalUnitType:I

.field reserved:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;

    iget v2, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    iget v3, p1, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    iget v3, p1, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    iget v2, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    shl-int/lit8 v2, v2, 0x6

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getNalUnitType()I
    .locals 1

    iget v0, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    return v0
.end method

.method public getReserved()I
    .locals 1

    iget v0, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sync"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    shr-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    return-void
.end method

.method public setNalUnitType(I)V
    .locals 0

    iput p1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    return-void
.end method

.method public setReserved(I)V
    .locals 0

    iput p1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SyncSampleEntry{reserved="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->reserved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nalUnitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mp4parser/iso14496/part15/SyncSampleEntry;->nalUnitType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
